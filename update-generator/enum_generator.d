#!/usr/bin/env dub
/+ dub.sdl:
    name "raylib-d_enums_generator"
    license "zlib"
    authors "Liam McGillivray"
    versions "deprecateOldEnums"
+/

/* INSTRUCTIONS:
To build and run this file to generate raylib's enum bindings, run the following command:
`dub --single enum_generator.d -- path/to-raylib`
Replace "path/to/raylib" with the path to the raylib directory.
*/

import std.path;
import std.file;
import std.string;
import std.algorithm.searching;
import std.json;
import std.conv;
import std.stdio;

const string enumsModulePath = "../source/raylib/raylib_enums.d";
const string enumsModuleName = "raylib.enums";

void main(string[] args) {
    string raylib_path;
    if (args.length>1 && args[1].isDir) raylib_path = args[1];
    else {
        writeln("Please supply a path to the raylib directory.");
        return;
    }

    JSONValue APIData = parseJSON(readText(buildPath(raylib_path,"parser/output/raylib_api.json")));

    final switch(checkGitStatus(enumsModulePath)) {
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
            writeln("Warning: You have uncommitted changes to `"~enumsModulePath.baseName~"`. Overwrite?");
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
    string[] newEnumsModule = ["module "~enumsModuleName~";", ""];

    foreach(enumData; APIData.object["enums"].array) {
        string prefix;   
        foreach (enumMember; enumData.object["values"].array) {
            if (prefix == "") prefix = enumMember["name"].get!string;
            else prefix = commonPrefix(prefix, enumMember["name"].get!string);
        }

        if ("description" in enumData.object) newEnumsModule ~= "// "~enumData.object["description"].get!string;
        newEnumsModule ~= "enum "~enumData.object["name"].get!string~" {";
        foreach (enumMember; enumData.object["values"].array) {
            string name = enumMember.object["name"].get!string;
            string value = enumMember.object["value"].toString;
            string description = enumMember.object["description"].get!string;
            newEnumsModule ~= "    "~name.chompPrefix(prefix)~" = "~value~",  // "~description;
            version (deprecateOldEnums) newEnumsModule ~= "    deprecated "~name~" = "~name.chompPrefix(prefix)~",";
            else newEnumsModule ~= "    "~name~" = "~name.chompPrefix(prefix)~",";
            
        }
        newEnumsModule ~= "}";
        newEnumsModule ~= "";
    }

    writeln(newEnumsModule);
    std.file.write("../source/raylib/raylib_enums.d", newEnumsModule.join("\n"));
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