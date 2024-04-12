#!/usr/bin/env dub
/+ dub.sdl:
    name "raylib-d_enums_generator"
    license "zlib"
    authors "Liam McGillivray"
+/
import std.path;
import std.file;
import std.string;
import std.algorithm.searching;
import std.json;
import std.conv;
import std.stdio;

void main(string[] args) {
    string raylib_path;
    if (args.length>1 && args[1].isDir) raylib_path = args[1];
    else {
        writeln("Please supply a path to the raylib directory.");
        return;
    }

    JSONValue APIData = parseJSON(readText(buildPath(raylib_path,"parser/output/raylib_api.json")));

    JSONValue[] enumsData = APIData.object["enums"].array;
    string[] newEnumsModule = ["module raylib.raylib_enums;", ""];

    foreach(enumData; APIData.object["enums"].array) {
        string prefix;   
        foreach (enumMember; enumData.object["values"].array) {
            if (prefix == "") prefix = enumMember["name"].get!string;
            else prefix = commonPrefix(prefix, enumMember["name"].get!string);
        }

        newEnumsModule ~= "enum "~enumData.object["name"].get!string~" {";
        foreach (enumMember; enumData.object["values"].array) {
            string name = enumMember.object["name"].get!string;
            string value = enumMember.object["value"].get!int.to!string;
            newEnumsModule ~= "    "~name~" = "~value~",";
        }
        newEnumsModule ~= "}";
        newEnumsModule ~= "";
    }

    writeln(newEnumsModule);
    std.file.write("raylib_enums.d", newEnumsModule.join("\n"));
}