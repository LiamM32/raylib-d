#!/usr/bin/env dub
/+ dub.sdl:
    name "raylib-d_updater"
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
import std.array;
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

    JSONValue[] enumsData = APIData["enums"].array;
    string moduleText = readText("../source/raylib/package.d");

    auto sectionHeaderRegex = regex(`//---+\s*\n\s*//\s*([\w\s]+)\s*\n\s*//---+\s*\n`);
    version (useSplitter) auto moduleSections = moduleText.splitter!(Yes.keepSeparators)(sectionHeaderRegex);
    else string[] moduleSections = split(moduleText, sectionHeaderRegex);

    string sectionTitle;
    foreach (section; moduleSections.array) {
        if (section.matchFirst(sectionHeaderRegex)) {
            sectionTitle = section.matchFirst(sectionHeaderRegex).back.replace("Definition", "").strip;
        } else switch (sectionTitle) {
            case "Enumerators":
                section.updateEnums(APIData["enums"].array);
                writeln("Did enumerators");
                break;
            default:
                if (sectionTitle.canFind("Enumerators")) throw new Exception("This didn't work");
                break;
        }
    }

    std.file.write("package.d", moduleSections.join);
}

void updateEnums(ref string enumsSection, JSONValue[] enumsData) {
    foreach(enumData; enumsData) {
        auto extendedEnumRegex = regex(`(//[^\n]*\n)(// NOTE:[^\n]*\n(?:\s*//[^\n]*\n))*(\s*enum\s+`~enumData["name"].get!string~`[\s\n]*\{[\s\n]*[^}]*\s*\})`);
        auto enumDefRegex = regex(`enum\s+`~enumData["name"].get!string~`[\s\n]*\{[\s\n]*[^}]*\s*\}`);
        //Regex with captures: `enum (\w+)[\s\n]*\{[\s\n]*[(?:(\w*)\s*=\s*(\w*),*)(?://\s*[\w\s]*\n)]*\}`
        
        string prefix;   
        foreach (enumMember; enumData["values"].array) {
            if (prefix == "") prefix = enumMember["name"].get!string;
            else prefix = commonPrefix(prefix, enumMember["name"].get!string);
        }

        auto oldDefinitionMatch = enumsSection.matchFirst(extendedEnumRegex);
        string oldDefinition;
        if (oldDefinitionMatch) {
            oldDefinition = oldDefinitionMatch[0];
        }
        string enumDefinition;
        if ("description" in enumData.object) {
            // Watch out for this section to make sure it doesn't replace the wrong comment.
            string description = "// "~enumData.object["description"].get!string;
            enumDefinition ~= description;
        }
        foreach(note; oldDefinitionMatch.array[1..$-1]) if (note.matchFirst(`//\sNOTE:`)) {
            enumDefinition ~= note;
        }
        enumDefinition ~= "enum "~enumData["name"].get!string~" {";
        foreach (enumMember; enumData["values"].array) {
            string name = enumMember["name"].get!string;
            string value = enumMember["value"].toString;
            string description = enumMember["description"].get!string;
            enumDefinition ~= "    "~name.chompPrefix(prefix)~" = "~value~",  // "~description;
            version (deprecateOldEnums) enumDefinition ~= "    deprecated "~name~" = "~value~",";
            else enumDefinition ~= "    "~name~" = "~name.chompPrefix(prefix)~",";
        }
        enumDefinition ~= "}";

        if (oldDefinitionMatch) {
            enumsSection.replace(oldDefinitionMatch[0], enumDefinition);
            writeln("Updated enum "~enumData["name"].get!string);
        } else {
            enumsSection ~= `\n` ~ enumDefinition;
            writeln("Added enum "~enumData["name"].get!string);
        }
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
        if (commandResult.output.strip == "false") return GitStatus.no_git;
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
