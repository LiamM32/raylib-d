module raylib.rtext;

import raylib;

// Draw text (using default font)
// NOTE: fontSize work like in any drawing program but if fontSize is lower than font-base-size, then font-base-size is used
// NOTE: chars spacing is proportional to fontSize
void DrawText(string text, int posX, int posY, uint fontSize, Color color)
{
    // Check if default font has been loaded
    if (GetFontDefault().texture.id != 0)
    {
        Vector2 position = { cast(float)posX, cast(float)posY };

        const uint defaultFontSize = 10;
        if (fontSize < defaultFontSize) fontSize = 10;   // If a size less than 10 is provided, reset it to the minimum value of 10 pixels
        uint spacing = fontSize/defaultFontSize;

        DrawTextEx(GetFontDefault(), text, position, cast(float)fontSize, cast(float)spacing, color);
    }
}

// Draw text using Font
// NOTE: chars spacing is NOT proportional to fontSize
void DrawTextEx(Font font, string text, Vector2 position, float fontSize, float spacing, Color tint)
{
    if (font.texture.id == 0) font = GetFontDefault();  // Security check in case of not valid font

    //uint size = cast(uint) text.length;   // Total size in bytes of the text, scanned by codepoints in loop. Needs to be casted from `size_t` to `uint`

    int textOffsetY = 0;            // Offset between lines (on linebreak '\n')
    float textOffsetX = 0.0f;       // Offset X to next character to draw

    float scaleFactor = fontSize/font.baseSize;         // Character quad scaling factor

    foreach (i, ref character; text)
    {
        // Get next codepoint from byte string and glyph index in font
        uint codepoint = cast(uint)character;
        int index = GetGlyphIndex(font, codepoint);

        if (character == '\n')
        {
            // NOTE: Line spacing is a global variable, use SetTextLineSpacing() to setup
            textOffsetY += textLineSpacing;
            textOffsetX = 0.0f;
        }
        else
        {
            if ((character != ' ') && (character != '\t'))
            {
                DrawTextCodepoint(font, codepoint, Vector2(x:position.x + textOffsetX, y:position.y + textOffsetY), fontSize, tint);
            }

            if (font.glyphs[index].advanceX == 0) textOffsetX += (cast(float)font.recs[index].width*scaleFactor + spacing);
            else textOffsetX += (cast(float)font.glyphs[index].advanceX*scaleFactor + spacing);
        }
    }
}
alias DrawText = DrawTextEx;

// Draw one character
void DrawTextCharacter(Font font, char character, Vector2 position, float fontSize, Color tint)
{
    // Character index position in sprite font
    // NOTE: In case a codepoint is not available in the font, index returned points to '?'
    uint codepoint = cast(uint) character;
    uint index = GetGlyphIndex(font, codepoint);
    float scaleFactor = fontSize/font.baseSize;     // Character quad scaling factor

    // Character destination rectangle on screen
    // NOTE: We consider glyphPadding on drawing
    Rectangle dstRec = {x: position.x + font.glyphs[index].offsetX*scaleFactor - font.glyphPadding*scaleFactor,
                      y: position.y + font.glyphs[index].offsetY*scaleFactor - cast(float)font.glyphPadding*scaleFactor,
                      width: (font.recs[index].width + 2.0f*font.glyphPadding)*scaleFactor,
                      height: (font.recs[index].height + 2.0f*font.glyphPadding)*scaleFactor };

    // Character source rectangle from font texture atlas
    // NOTE: We consider chars padding when drawing, it could be required for outline/glow shader effects
    Rectangle srcRec = { font.recs[index].x - cast(float)font.glyphPadding, font.recs[index].y - cast(float)font.glyphPadding,
                         font.recs[index].width + 2.0f*font.glyphPadding, font.recs[index].height + 2.0f*font.glyphPadding };

    // Draw the character texture on the screen
    DrawTexturePro(font.texture, srcRec, dstRec, Vector2(0, 0), 0.0f, tint);
}

extern (C) @nogc nothrow:

static int textLineSpacing = 15;                // Text vertical line spacing in pixels

// Text drawing functions
void DrawFPS(int posX, int posY); // Draw current FPS
void DrawText(const(char)[] text, int posX, int posY, int fontSize, Color color); // Draw text (using default font)
void DrawTextEx(Font font, const(char)[] text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text using font and additional parameters
void DrawTextPro(Font font, const(char)[] text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint); // Draw text using Font and pro parameters (rotation)
void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint); // Draw one character (codepoint)
void DrawTextCodepoints(Font font, const(int)* codepoints, int codepointCount, Vector2 position, float fontSize, float spacing, Color tint); // Draw multiple character (codepoint)