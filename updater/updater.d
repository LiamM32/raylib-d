#!/usr/bin/env dub
/+ dub.sdl:
    name "raylib-d_enums_generator"
    license "zlib"
    authors "Liam McGillivray"
    versions "deprecateOldEnums" "useSplitter"
+/

/* INSTRUCTIONS:
To build and run this file to generate raylib's enum bindings, run the following command:
`dub --single enum_generator.d -- path/to-raylib`
Replace "path/to/raylib" with the path to the raylib directory.
*/

import std.path;
import std.file;
import std.string;
import std.algorithm;
import std.regex;
import std.json;
import std.conv;
import std.stdio;
import std.typecons;

const string ModulePath = "./package.d";

void main(string[] args) {
    string raylib_path;
    if (args.length>1 && args[1].isDir) raylib_path = args[1];
    else {
        writeln("Please supply a path to the raylib directory.");
        return;
    }

    JSONValue APIData = parseJSON(readText(buildPath(raylib_path,"parser/output/raylib_api.json")));

    final switch(checkGitStatus(ModulePath)) {
        case GitStatus.no_git:
            writeln("Warning: Files aren't tracked by git. Continue?");
            string input = readln();
            if (input.toLower[0]=='y') break;
            else {
                writeln("Aborting");
                return;
            }
            break;
        case GitStatus.file_modified:
            writeln("Warning: You have uncommitted changes to `"~ModulePath.baseName~"`. Overwrite?");
            string input = readln();
            if (input.toLower[0]=='y') break;
            else {
                writeln("Aborting");
                return;
            }
        case GitStatus.not_modified:
            break;
    }

    JSONValue[] enumsData = APIData.object["enums"].array;
    string moduleText = readText("../source/raylib/package.d");

    auto sectionHeader = regex(`//---+\s*\n\s*//\s*([\w\s]+)\s*\n\s*//---+\s*\n)`);
    version (useSplitter) auto moduleSections = moduleText.splitter!(Yes.keepSeparators)(sectionHeader);
    else string[] moduleSections = split(moduleText, sectionHeader);

    //writeln("There are ", moduleSections.length, " sections");

    foreach (section; moduleSections) {
        if (section.canFind(`//---+\s*\n\s*//\s*`)) writeln("Found");
    }

    std.file.write("package.d", moduleSections.join);
}

void updateEnums(ref string enumsSection, JSONValue[] enumsData) {
    foreach(enumData; enumsData) {
        string prefix;   
        foreach (enumMember; enumData.object["values"].array) {
            if (prefix == "") prefix = enumMember["name"].get!string;
            else prefix = commonPrefix(prefix, enumMember["name"].get!string);
        }

        /*if ("description" in enumData.object) newEnumsModule ~= "// "~enumData.object["description"].get!string;
        newEnumsModule ~= "enum "~enumData.object["name"].get!string~" {";
        foreach (enumMember; enumData.object["values"].array) {
            string name = enumMember.object["name"].get!string;
            string value = enumMember.object["value"].toString;
            string description = enumMember.object["description"].get!string;
            newEnumsModule ~= "    "~name.chompPrefix(prefix)~" = "~value~",  // "~description;
            version (deprecateOldEnums) newEnumsModule ~= "    deprecated "~name~" = "~value~",";
            else newEnumsModule ~= "    "~name~" = "~name.chompPrefix(prefix)~",";
        }
        newEnumsModule ~= "}";
        newEnumsModule ~= "";*/
    }

    //writeln(moduleSections);
}

// Removes a section of code bounded by curly braces ("{}") from the input string, and returns what was removed.
string cutSection(ref uint startIndex, ref string input) {
    uint currentPosition = startIndex;
    int level = 0;
    string remaining = input[startIndex..$];
    
    bool findNext(ref uint index) {
        string remaining = input[index..$];
        bool goingDeeper;
        index = cast(uint)(input.length - remaining.length + min(remaining.indexOf('{'), remaining.indexOf('}')));
        if (!remaining.canFind('{') || remaining.indexOf('}') < remaining.indexOf('{')) return false;
        else return true;
    }

    if (input.indexOf('{')==-1 || input.indexOf('}') < input.indexOf('{')) return "";
    else {
        startIndex = cast(uint)input.indexOf('{') + 1;
        level = 1;
        while (level > 0) {
            if (findNext(currentPosition)) level++;
            else level--;
        }
    }
    string result = input[startIndex..currentPosition];
    input = input[0..startIndex] ~ input[currentPosition..$];
    return result;
}

GitStatus checkGitStatus(string path) {
    import std.process;
    try {
        auto commandResult = executeShell("git rev-parse --is-inside-work-tree");
        if (commandResult.output.chomp == "false") return GitStatus.no_git;
        commandResult = executeShell("git status");
        if (commandResult.output.canFind("../source/raylib/raylib_enums.d")) return GitStatus.file_modified;
        else return GitStatus.not_modified;
    } catch (Throwable) {
        return GitStatus.no_git;
    }
}

enum GitStatus {
    no_git,
    file_modified,
    not_modified
}