#!/usr/bin/env dub
/+ dub.sdl:
    name "raylib-d_updater"
    license "zlib"
    authors "Liam McGillivray"
    versions "enums_module"
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
import core.stdc.ctype;

const string ModulePath = "./package.d";

void main(string[] args) {
    string raylib_path;
    if (args.length>1 && args[1].isDir) raylib_path = args[1];
    else {
        writeln("Please supply a path to the raylib directory.");
        return;
    }

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

    JSONValue APIData = parseJSON(readText(buildPath(raylib_path,"parser/output/raylib_api.json")));

    version (raylib_module) doRaylibModule(APIData);
    version (enums_module) {
        string moduleText;
        if (isFile("../source/raylib/enums.d")) moduleText = readText("../source/raylib/enums.d");
        moduleText.updateEnums(APIData["enums"].array);
        std.file.write("../source/raylib/enums.d", moduleText);
    }
}

void doRaylibModule (JSONValue APIData) {
    JSONValue[] enumsData = APIData["enums"].array;
    string moduleText = readText("../source/raylib/package.d");

    auto sectionHeaderRegex = regex(`//---+\s*\n\s*//\s*([\w\s]+)\s*\n\s*//---+\s*\n`);
    version (useSplitter) auto moduleSections = moduleText.splitter!(Yes.keepSeparators)(sectionHeaderRegex);
    else string[] moduleSections = split(moduleText, sectionHeaderRegex);

    string sectionTitle;
    debug {
        auto oldModule = moduleSections.array;
    }
    foreach (ref section; moduleSections.array) {
        if (section.matchFirst(sectionHeaderRegex)) {
            sectionTitle = section.matchFirst(sectionHeaderRegex).back.replace("Definition", "").strip;
        } else switch (sectionTitle) {
            case "Enumerators":
                section.updateEnums(APIData["enums"].array);
                debug writeln(section);
                writeln("Did enumerators");
                break;
            default:
                if (sectionTitle.canFind("Enumerators")) throw new Exception("This didn't work");
                break;
        }
    }
    debug assert(oldModule != moduleSections.array);

    std.file.write("package.d", moduleSections.join);
    //writeln(moduleSections.join);
}

void updateEnums(ref string enumsSection, JSONValue[] enumsData) {
    
    string oldNameToNewName(string name, string prefix) {
        name = name.chompPrefix(prefix).toLower;
        name = name.replace(" one", " 1");
        name = name.replace("_one", "_1");
        name = name.replace("two", "2");
        name = name.replace("three", "3");
        name = name.replace("four", "4");
        name = name.replace("five", "5");
        name = name.replace("six", "6");
        name = name.replace("seven", "7");
        name = name.replace("eight", "8");
        name = name.replace("nine", "9");
        name = name.replace("zero", "0");
        return name;
    }
    
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
            assert(enumsSection.canFind(oldDefinitionMatch[0]));
            oldDefinition = oldDefinitionMatch[0];
        }
        string enumDefinition;
        if ("description" in enumData.object) {
            // Watch out for this section to make sure it doesn't replace the wrong comment.
            string description = "// "~enumData.object["description"].get!string~'\n';
            enumDefinition ~= description;
        }
        if (oldDefinitionMatch) foreach(note; oldDefinitionMatch.array[1..$-1]) if (note.matchFirst(`//\sNOTE:`)) {
            enumDefinition ~= note;
        }
        enumDefinition ~= "enum "~enumData["name"].get!string~" {\n";
        foreach (enumMember; enumData["values"].array) {
            string oldName = enumMember["name"].get!string;
            string newName = oldNameToNewName(oldName, prefix);
            string value = enumMember["value"].toString;
            string description = enumMember["description"].get!string;
            enumDefinition ~= "    "~newName~" = "~value~",  // "~description~'\n';
            version (deprecateOldEnums) enumDefinition ~= "    deprecated "~oldName~" = "~value~",\n";
            else enumDefinition ~= "    "~oldName~" = "~value~",\n";
        }
        enumDefinition ~= "}";
        writeln(oldDefinition);

        if (oldDefinitionMatch) {
            writeln("\n\n oldDefinition:\n\n"~oldDefinition.strip);
            writeln("\n\n enumDefinition:\n\n"~enumDefinition);
            assert(enumsSection.canFind(oldDefinition));
            enumsSection = enumsSection.replace(oldDefinition.strip, enumDefinition);
        } else {
            enumsSection ~= `\n` ~ enumDefinition;
            writeln("Added enum "~enumData["name"].get!string);
        }
    }

    //writeln(enumsSection);
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
    writeln("startIndex: ", startIndex, " currentPosition: ", currentPosition);
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
