module raylibd_templates;

import std.traits;
import std.conv;

string EnumPrefixes(T)(string oldName, string prefix) {
    string result = "enum " ~ oldName ~ " {\n";
    static foreach(member; __traits(allMembers, T)) {
        result ~= "    " ~ prefix ~ member ~ " = " ~ __traits(getMember, T, member).to!int.to!string ~ ",\n";
        result ~= "    " ~ member ~ " = " ~ __traits(getMember, T, member).to!int.to!string ~ ",\n";
    }
    return result ~ "}\n";
}

string EnumPrefixes(T)(string prefix) {
    string result;
    static foreach(member; __traits(allMembers, T)) {
        result ~= "enum " ~ T.stringof ~ " " ~ prefix ~ member ~ " = " ~ T.stringof ~ "." ~ member ~ ";\n";
    }
    return result;
}

string MakeStringOverload(alias func)() {
    string def = ReturnType!func.stringof~" "~__traits(identifier, func)~"(";

    auto paramNames = ParameterIdentifierTuple!func;
    
    import std.algorithm.searching;
    foreach(i, paramType; Parameters!func) {
        if (paramType.stringof.canFind("char")) def ~= "ref string"; // Made a reference so that D string literals know to use the base version of the function and not this one.
        else def ~= paramType.stringof;
        def ~= " "~paramNames[i] ~ ", ";
    }
    def.length -= 2;
    def ~= ") { ";
    if (ReturnType!func.stringof != "void") def ~= "return ";
    def ~= __traits(identifier, func) ~ "(";
    foreach(i, argument; paramNames) {
        if (Parameters!func[i].stringof.canFind("char")) def ~= "cast(char*)";
        def ~= argument ~ ", ";
    }
    def.length -= 2;
    def ~= "); }";

    return def;
}

version (generateStringOverload) {
    template GenerateStringOverload(alias Func) {
        import std.traits;

        alias FuncType = ReturnType!Func;
        alias ParamTypes = Parameters!Func;
        alias ParamNames = ParameterIdentifierTuple!Func;

        alias FunctionArgs = ParameterSequence!(ParamTypes, ParamNames);

        static foreach (i, ParamType; ParamTypes) {
            pragma(msg, "Parameter type: " ~ ParamType.stringof);
        }
    }

    template ParametersTuple(alias ParamTypes, alias ParamNames) {
        //static assert (ParamTypes.length == ParamNames.length);
        
        static foreach (i, ParamType; ParamNames) {

        }
    }

    static struct FunctionParameter(T, paramName) {
        alias ParamType = T;
        alias ParamName = paramName;
    }

    template ParameterSequence(alias Types, alias Names) {
        import std.range;
        static if (Types.empty) alias ParameterSequence = Tuple!();
        else {
            alias CurrentParam = FunctionParameter(Types[0], Names[0]);
            alias RemainingParams = ParameterSequence!(Params[1..$], Names[1..$]);
            alias ParameterSequence = tuple(CurrentParam, RemainingParams);
        }
    }
}

template MakeOverloadsWithStrings(string moduleName) {
    import std.meta;
    import std.traits;
    static foreach (func; Filter!(isCallable, __traits(allMembers, mixin(moduleName)))) {
        mixin(MakeStringOverload!func);
        pragma(msg, MakeStringOverload!func);
    }
}