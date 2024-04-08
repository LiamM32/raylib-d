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
    string def = ReturnType!func.stringof ~" "~ __traits(identifier, func) ~ "(";

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

template MakeOverloadsWithStrings(string moduleName) {
    import std.meta;
    import std.traits;
    static foreach (func; Filter!(isCallable, __traits(allMembers, mixin(moduleName)))) {
        mixin(MakeStringOverload!func);
        pragma(msg, MakeStringOverload!func);
    }
}