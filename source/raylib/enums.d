module raylib.enums;

// System/Window config flags
// NOTE: Every bit registers one state (use it with bit masks)
// By default all flags are set to 0
enum ConfigFlags {
    vsync_hint = 64,  // Set to try enabling V-Sync on GPU
    FLAG_VSYNC_HINT = 64,
    fullscreen_mode = 2,  // Set to run program in fullscreen
    FLAG_FULLSCREEN_MODE = 2,
    window_resizable = 4,  // Set to allow resizable window
    FLAG_WINDOW_RESIZABLE = 4,
    window_undecorated = 8,  // Set to disable window decoration (frame and buttons)
    FLAG_WINDOW_UNDECORATED = 8,
    window_hidden = 128,  // Set to hide window
    FLAG_WINDOW_HIDDEN = 128,
    window_minimized = 512,  // Set to minimize window (iconify)
    FLAG_WINDOW_MINIMIZED = 512,
    window_maximized = 1024,  // Set to maximize window (expanded to monitor)
    FLAG_WINDOW_MAXIMIZED = 1024,
    window_unfocused = 2048,  // Set to window non focused
    FLAG_WINDOW_UNFOCUSED = 2048,
    window_topmost = 4096,  // Set to window always on top
    FLAG_WINDOW_TOPMOST = 4096,
    window_always_run = 256,  // Set to allow windows running while minimized
    FLAG_WINDOW_ALWAYS_RUN = 256,
    window_transparent = 16,  // Set to allow transparent framebuffer
    FLAG_WINDOW_TRANSPARENT = 16,
    window_highdpi = 8192,  // Set to support HighDPI
    FLAG_WINDOW_HIGHDPI = 8192,
    window_mouse_passthrough = 16384,  // Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
    FLAG_WINDOW_MOUSE_PASSTHROUGH = 16384,
    borderless_windowed_mode = 32768,  // Set to run program in borderless windowed mode
    FLAG_BORDERLESS_WINDOWED_MODE = 32768,
    msaa_4x_hint = 32,  // Set to try enabling MSAA 4X
    FLAG_MSAA_4X_HINT = 32,
    interlaced_hint = 65536,  // Set to try enabling interlaced video format (for V3D)
    FLAG_INTERLACED_HINT = 65536,
}


// Trace log level
// NOTE: Organized by priority level
enum TraceLogLevel {
    all = 0,  // Display all logs
    LOG_ALL = 0,
    trace = 1,  // Trace logging, intended for internal use only
    LOG_TRACE = 1,
    debug = 2,  // Debug logging, used for internal debugging, it should be disabled on release builds
    LOG_DEBUG = 2,
    info = 3,  // Info logging, used for program execution info
    LOG_INFO = 3,
    warning = 4,  // Warning logging, used on recoverable failures
    LOG_WARNING = 4,
    error = 5,  // Error logging, used on unrecoverable failures
    LOG_ERROR = 5,
    fatal = 6,  // Fatal logging, used to abort program: exit(EXIT_FAILURE)
    LOG_FATAL = 6,
    none = 7,  // Disable logging
    LOG_NONE = 7,
}


// Keyboard keys (US keyboard layout)
// NOTE: Use GetKeyPressed() to allow redefining required keys for alternative layouts
enum KeyboardKey {
    null = 0,  // Key: NULL, used for no key pressed
    KEY_NULL = 0,
    apostrophe = 39,  // Key: '
    KEY_APOSTROPHE = 39,
    comma = 44,  // Key: ,
    KEY_COMMA = 44,
    minus = 45,  // Key: -
    KEY_MINUS = 45,
    period = 46,  // Key: .
    KEY_PERIOD = 46,
    slash = 47,  // Key: /
    KEY_SLASH = 47,
    0 = 48,  // Key: 0
    KEY_ZERO = 48,
    one = 49,  // Key: 1
    KEY_ONE = 49,
    2 = 50,  // Key: 2
    KEY_TWO = 50,
    3 = 51,  // Key: 3
    KEY_THREE = 51,
    4 = 52,  // Key: 4
    KEY_FOUR = 52,
    5 = 53,  // Key: 5
    KEY_FIVE = 53,
    6 = 54,  // Key: 6
    KEY_SIX = 54,
    7 = 55,  // Key: 7
    KEY_SEVEN = 55,
    8 = 56,  // Key: 8
    KEY_EIGHT = 56,
    9 = 57,  // Key: 9
    KEY_NINE = 57,
    semicolon = 59,  // Key: ;
    KEY_SEMICOLON = 59,
    equal = 61,  // Key: =
    KEY_EQUAL = 61,
    a = 65,  // Key: A | a
    KEY_A = 65,
    b = 66,  // Key: B | b
    KEY_B = 66,
    c = 67,  // Key: C | c
    KEY_C = 67,
    d = 68,  // Key: D | d
    KEY_D = 68,
    e = 69,  // Key: E | e
    KEY_E = 69,
    f = 70,  // Key: F | f
    KEY_F = 70,
    g = 71,  // Key: G | g
    KEY_G = 71,
    h = 72,  // Key: H | h
    KEY_H = 72,
    i = 73,  // Key: I | i
    KEY_I = 73,
    j = 74,  // Key: J | j
    KEY_J = 74,
    k = 75,  // Key: K | k
    KEY_K = 75,
    l = 76,  // Key: L | l
    KEY_L = 76,
    m = 77,  // Key: M | m
    KEY_M = 77,
    n = 78,  // Key: N | n
    KEY_N = 78,
    o = 79,  // Key: O | o
    KEY_O = 79,
    p = 80,  // Key: P | p
    KEY_P = 80,
    q = 81,  // Key: Q | q
    KEY_Q = 81,
    r = 82,  // Key: R | r
    KEY_R = 82,
    s = 83,  // Key: S | s
    KEY_S = 83,
    t = 84,  // Key: T | t
    KEY_T = 84,
    u = 85,  // Key: U | u
    KEY_U = 85,
    v = 86,  // Key: V | v
    KEY_V = 86,
    w = 87,  // Key: W | w
    KEY_W = 87,
    x = 88,  // Key: X | x
    KEY_X = 88,
    y = 89,  // Key: Y | y
    KEY_Y = 89,
    z = 90,  // Key: Z | z
    KEY_Z = 90,
    left_bracket = 91,  // Key: [
    KEY_LEFT_BRACKET = 91,
    backslash = 92,  // Key: '\'
    KEY_BACKSLASH = 92,
    right_bracket = 93,  // Key: ]
    KEY_RIGHT_BRACKET = 93,
    grave = 96,  // Key: `
    KEY_GRAVE = 96,
    space = 32,  // Key: Space
    KEY_SPACE = 32,
    escape = 256,  // Key: Esc
    KEY_ESCAPE = 256,
    enter = 257,  // Key: Enter
    KEY_ENTER = 257,
    tab = 258,  // Key: Tab
    KEY_TAB = 258,
    backspace = 259,  // Key: Backspace
    KEY_BACKSPACE = 259,
    insert = 260,  // Key: Ins
    KEY_INSERT = 260,
    delete = 261,  // Key: Del
    KEY_DELETE = 261,
    right = 262,  // Key: Cursor right
    KEY_RIGHT = 262,
    left = 263,  // Key: Cursor left
    KEY_LEFT = 263,
    down = 264,  // Key: Cursor down
    KEY_DOWN = 264,
    up = 265,  // Key: Cursor up
    KEY_UP = 265,
    page_up = 266,  // Key: Page up
    KEY_PAGE_UP = 266,
    page_down = 267,  // Key: Page down
    KEY_PAGE_DOWN = 267,
    home = 268,  // Key: Home
    KEY_HOME = 268,
    end = 269,  // Key: End
    KEY_END = 269,
    caps_lock = 280,  // Key: Caps lock
    KEY_CAPS_LOCK = 280,
    scroll_lock = 281,  // Key: Scroll down
    KEY_SCROLL_LOCK = 281,
    num_lock = 282,  // Key: Num lock
    KEY_NUM_LOCK = 282,
    print_screen = 283,  // Key: Print screen
    KEY_PRINT_SCREEN = 283,
    pause = 284,  // Key: Pause
    KEY_PAUSE = 284,
    f1 = 290,  // Key: F1
    KEY_F1 = 290,
    f2 = 291,  // Key: F2
    KEY_F2 = 291,
    f3 = 292,  // Key: F3
    KEY_F3 = 292,
    f4 = 293,  // Key: F4
    KEY_F4 = 293,
    f5 = 294,  // Key: F5
    KEY_F5 = 294,
    f6 = 295,  // Key: F6
    KEY_F6 = 295,
    f7 = 296,  // Key: F7
    KEY_F7 = 296,
    f8 = 297,  // Key: F8
    KEY_F8 = 297,
    f9 = 298,  // Key: F9
    KEY_F9 = 298,
    f10 = 299,  // Key: F10
    KEY_F10 = 299,
    f11 = 300,  // Key: F11
    KEY_F11 = 300,
    f12 = 301,  // Key: F12
    KEY_F12 = 301,
    left_shift = 340,  // Key: Shift left
    KEY_LEFT_SHIFT = 340,
    left_control = 341,  // Key: Control left
    KEY_LEFT_CONTROL = 341,
    left_alt = 342,  // Key: Alt left
    KEY_LEFT_ALT = 342,
    left_super = 343,  // Key: Super left
    KEY_LEFT_SUPER = 343,
    right_shift = 344,  // Key: Shift right
    KEY_RIGHT_SHIFT = 344,
    right_control = 345,  // Key: Control right
    KEY_RIGHT_CONTROL = 345,
    right_alt = 346,  // Key: Alt right
    KEY_RIGHT_ALT = 346,
    right_super = 347,  // Key: Super right
    KEY_RIGHT_SUPER = 347,
    kb_menu = 348,  // Key: KB menu
    KEY_KB_MENU = 348,
    kp_0 = 320,  // Key: Keypad 0
    KEY_KP_0 = 320,
    kp_1 = 321,  // Key: Keypad 1
    KEY_KP_1 = 321,
    kp_2 = 322,  // Key: Keypad 2
    KEY_KP_2 = 322,
    kp_3 = 323,  // Key: Keypad 3
    KEY_KP_3 = 323,
    kp_4 = 324,  // Key: Keypad 4
    KEY_KP_4 = 324,
    kp_5 = 325,  // Key: Keypad 5
    KEY_KP_5 = 325,
    kp_6 = 326,  // Key: Keypad 6
    KEY_KP_6 = 326,
    kp_7 = 327,  // Key: Keypad 7
    KEY_KP_7 = 327,
    kp_8 = 328,  // Key: Keypad 8
    KEY_KP_8 = 328,
    kp_9 = 329,  // Key: Keypad 9
    KEY_KP_9 = 329,
    kp_decimal = 330,  // Key: Keypad .
    KEY_KP_DECIMAL = 330,
    kp_divide = 331,  // Key: Keypad /
    KEY_KP_DIVIDE = 331,
    kp_multiply = 332,  // Key: Keypad *
    KEY_KP_MULTIPLY = 332,
    kp_subtract = 333,  // Key: Keypad -
    KEY_KP_SUBTRACT = 333,
    kp_add = 334,  // Key: Keypad +
    KEY_KP_ADD = 334,
    kp_enter = 335,  // Key: Keypad Enter
    KEY_KP_ENTER = 335,
    kp_equal = 336,  // Key: Keypad =
    KEY_KP_EQUAL = 336,
    back = 4,  // Key: Android back button
    KEY_BACK = 4,
    menu = 5,  // Key: Android menu button
    KEY_MENU = 5,
    volume_up = 24,  // Key: Android volume up button
    KEY_VOLUME_UP = 24,
    volume_down = 25,  // Key: Android volume down button
    KEY_VOLUME_DOWN = 25,
}

// Mouse buttons
enum MouseButton {
    left = 0,  // Mouse button left
    MOUSE_BUTTON_LEFT = 0,
    right = 1,  // Mouse button right
    MOUSE_BUTTON_RIGHT = 1,
    middle = 2,  // Mouse button middle (pressed wheel)
    MOUSE_BUTTON_MIDDLE = 2,
    side = 3,  // Mouse button side (advanced mouse device)
    MOUSE_BUTTON_SIDE = 3,
    extra = 4,  // Mouse button extra (advanced mouse device)
    MOUSE_BUTTON_EXTRA = 4,
    forward = 5,  // Mouse button forward (advanced mouse device)
    MOUSE_BUTTON_FORWARD = 5,
    back = 6,  // Mouse button back (advanced mouse device)
    MOUSE_BUTTON_BACK = 6,
}

// Mouse cursor
enum MouseCursor {
    default = 0,  // Default pointer shape
    MOUSE_CURSOR_DEFAULT = 0,
    arrow = 1,  // Arrow shape
    MOUSE_CURSOR_ARROW = 1,
    ibeam = 2,  // Text writing cursor shape
    MOUSE_CURSOR_IBEAM = 2,
    crosshair = 3,  // Cross shape
    MOUSE_CURSOR_CROSSHAIR = 3,
    pointing_hand = 4,  // Pointing hand cursor
    MOUSE_CURSOR_POINTING_HAND = 4,
    resize_ew = 5,  // Horizontal resize/move arrow shape
    MOUSE_CURSOR_RESIZE_EW = 5,
    resize_ns = 6,  // Vertical resize/move arrow shape
    MOUSE_CURSOR_RESIZE_NS = 6,
    resize_nwse = 7,  // Top-left to bottom-right diagonal resize/move arrow shape
    MOUSE_CURSOR_RESIZE_NWSE = 7,
    resize_nesw = 8,  // The top-right to bottom-left diagonal resize/move arrow shape
    MOUSE_CURSOR_RESIZE_NESW = 8,
    resize_all = 9,  // The omnidirectional resize/move cursor shape
    MOUSE_CURSOR_RESIZE_ALL = 9,
    not_allowed = 10,  // The operation-not-allowed shape
    MOUSE_CURSOR_NOT_ALLOWED = 10,
}

// Gamepad buttons
enum GamepadButton {
    unknown = 0,  // Unknown button, just for error checking
    GAMEPAD_BUTTON_UNKNOWN = 0,
    left_face_up = 1,  // Gamepad left DPAD up button
    GAMEPAD_BUTTON_LEFT_FACE_UP = 1,
    left_face_right = 2,  // Gamepad left DPAD right button
    GAMEPAD_BUTTON_LEFT_FACE_RIGHT = 2,
    left_face_down = 3,  // Gamepad left DPAD down button
    GAMEPAD_BUTTON_LEFT_FACE_DOWN = 3,
    left_face_left = 4,  // Gamepad left DPAD left button
    GAMEPAD_BUTTON_LEFT_FACE_LEFT = 4,
    right_face_up = 5,  // Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
    GAMEPAD_BUTTON_RIGHT_FACE_UP = 5,
    right_face_right = 6,  // Gamepad right button right (i.e. PS3: Circle, Xbox: B)
    GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = 6,
    right_face_down = 7,  // Gamepad right button down (i.e. PS3: Cross, Xbox: A)
    GAMEPAD_BUTTON_RIGHT_FACE_DOWN = 7,
    right_face_left = 8,  // Gamepad right button left (i.e. PS3: Square, Xbox: X)
    GAMEPAD_BUTTON_RIGHT_FACE_LEFT = 8,
    left_trigger_1 = 9,  // Gamepad top/back trigger left (first), it could be a trailing button
    GAMEPAD_BUTTON_LEFT_TRIGGER_1 = 9,
    left_trigger_2 = 10,  // Gamepad top/back trigger left (second), it could be a trailing button
    GAMEPAD_BUTTON_LEFT_TRIGGER_2 = 10,
    right_trigger_1 = 11,  // Gamepad top/back trigger right (one), it could be a trailing button
    GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = 11,
    right_trigger_2 = 12,  // Gamepad top/back trigger right (second), it could be a trailing button
    GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = 12,
    middle_left = 13,  // Gamepad center buttons, left one (i.e. PS3: Select)
    GAMEPAD_BUTTON_MIDDLE_LEFT = 13,
    middle = 14,  // Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
    GAMEPAD_BUTTON_MIDDLE = 14,
    middle_right = 15,  // Gamepad center buttons, right one (i.e. PS3: Start)
    GAMEPAD_BUTTON_MIDDLE_RIGHT = 15,
    left_thumb = 16,  // Gamepad joystick pressed button left
    GAMEPAD_BUTTON_LEFT_THUMB = 16,
    right_thumb = 17,  // Gamepad joystick pressed button right
    GAMEPAD_BUTTON_RIGHT_THUMB = 17,
}

// Gamepad axis
enum GamepadAxis {
    left_x = 0,  // Gamepad left stick X axis
    GAMEPAD_AXIS_LEFT_X = 0,
    left_y = 1,  // Gamepad left stick Y axis
    GAMEPAD_AXIS_LEFT_Y = 1,
    right_x = 2,  // Gamepad right stick X axis
    GAMEPAD_AXIS_RIGHT_X = 2,
    right_y = 3,  // Gamepad right stick Y axis
    GAMEPAD_AXIS_RIGHT_Y = 3,
    left_trigger = 4,  // Gamepad back trigger left, pressure level: [1..-1]
    GAMEPAD_AXIS_LEFT_TRIGGER = 4,
    right_trigger = 5,  // Gamepad back trigger right, pressure level: [1..-1]
    GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
}

// Material map index
enum MaterialMapIndex {
    albedo = 0,  // Albedo material (same as: MATERIAL_MAP_DIFFUSE)
    MATERIAL_MAP_ALBEDO = 0,
    metalness = 1,  // Metalness material (same as: MATERIAL_MAP_SPECULAR)
    MATERIAL_MAP_METALNESS = 1,
    normal = 2,  // Normal material
    MATERIAL_MAP_NORMAL = 2,
    roughness = 3,  // Roughness material
    MATERIAL_MAP_ROUGHNESS = 3,
    occlusion = 4,  // Ambient occlusion material
    MATERIAL_MAP_OCCLUSION = 4,
    emission = 5,  // Emission material
    MATERIAL_MAP_EMISSION = 5,
    h8 = 6,  // Heightmap material
    MATERIAL_MAP_HEIGHT = 6,
    cubemap = 7,  // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    MATERIAL_MAP_CUBEMAP = 7,
    irradiance = 8,  // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    MATERIAL_MAP_IRRADIANCE = 8,
    prefilter = 9,  // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    MATERIAL_MAP_PREFILTER = 9,
    brdf = 10,  // Brdf material
    MATERIAL_MAP_BRDF = 10,
}

// Shader location index
enum ShaderLocationIndex {
    vertex_position = 0,  // Shader location: vertex attribute: position
    SHADER_LOC_VERTEX_POSITION = 0,
    vertex_texcoord01 = 1,  // Shader location: vertex attribute: texcoord01
    SHADER_LOC_VERTEX_TEXCOORD01 = 1,
    vertex_texcoord02 = 2,  // Shader location: vertex attribute: texcoord02
    SHADER_LOC_VERTEX_TEXCOORD02 = 2,
    vertex_normal = 3,  // Shader location: vertex attribute: normal
    SHADER_LOC_VERTEX_NORMAL = 3,
    vertex_tangent = 4,  // Shader location: vertex attribute: tangent
    SHADER_LOC_VERTEX_TANGENT = 4,
    vertex_color = 5,  // Shader location: vertex attribute: color
    SHADER_LOC_VERTEX_COLOR = 5,
    matrix_mvp = 6,  // Shader location: matrix uniform: model-view-projection
    SHADER_LOC_MATRIX_MVP = 6,
    matrix_view = 7,  // Shader location: matrix uniform: view (camera transform)
    SHADER_LOC_MATRIX_VIEW = 7,
    matrix_projection = 8,  // Shader location: matrix uniform: projection
    SHADER_LOC_MATRIX_PROJECTION = 8,
    matrix_model = 9,  // Shader location: matrix uniform: model (transform)
    SHADER_LOC_MATRIX_MODEL = 9,
    matrix_normal = 10,  // Shader location: matrix uniform: normal
    SHADER_LOC_MATRIX_NORMAL = 10,
    vector_view = 11,  // Shader location: vector uniform: view
    SHADER_LOC_VECTOR_VIEW = 11,
    color_diffuse = 12,  // Shader location: vector uniform: diffuse color
    SHADER_LOC_COLOR_DIFFUSE = 12,
    color_specular = 13,  // Shader location: vector uniform: specular color
    SHADER_LOC_COLOR_SPECULAR = 13,
    color_ambient = 14,  // Shader location: vector uniform: ambient color
    SHADER_LOC_COLOR_AMBIENT = 14,
    map_albedo = 15,  // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
    SHADER_LOC_MAP_ALBEDO = 15,
    map_metalness = 16,  // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
    SHADER_LOC_MAP_METALNESS = 16,
    map_normal = 17,  // Shader location: sampler2d texture: normal
    SHADER_LOC_MAP_NORMAL = 17,
    map_roughness = 18,  // Shader location: sampler2d texture: roughness
    SHADER_LOC_MAP_ROUGHNESS = 18,
    map_occlusion = 19,  // Shader location: sampler2d texture: occlusion
    SHADER_LOC_MAP_OCCLUSION = 19,
    map_emission = 20,  // Shader location: sampler2d texture: emission
    SHADER_LOC_MAP_EMISSION = 20,
    map_h8 = 21,  // Shader location: sampler2d texture: height
    SHADER_LOC_MAP_HEIGHT = 21,
    map_cubemap = 22,  // Shader location: samplerCube texture: cubemap
    SHADER_LOC_MAP_CUBEMAP = 22,
    map_irradiance = 23,  // Shader location: samplerCube texture: irradiance
    SHADER_LOC_MAP_IRRADIANCE = 23,
    map_prefilter = 24,  // Shader location: samplerCube texture: prefilter
    SHADER_LOC_MAP_PREFILTER = 24,
    map_brdf = 25,  // Shader location: sampler2d texture: brdf
    SHADER_LOC_MAP_BRDF = 25,
}

// Shader uniform data type
enum ShaderUniformDataType {
    float = 0,  // Shader uniform type: float
    SHADER_UNIFORM_FLOAT = 0,
    vec2 = 1,  // Shader uniform type: vec2 (2 float)
    SHADER_UNIFORM_VEC2 = 1,
    vec3 = 2,  // Shader uniform type: vec3 (3 float)
    SHADER_UNIFORM_VEC3 = 2,
    vec4 = 3,  // Shader uniform type: vec4 (4 float)
    SHADER_UNIFORM_VEC4 = 3,
    int = 4,  // Shader uniform type: int
    SHADER_UNIFORM_INT = 4,
    ivec2 = 5,  // Shader uniform type: ivec2 (2 int)
    SHADER_UNIFORM_IVEC2 = 5,
    ivec3 = 6,  // Shader uniform type: ivec3 (3 int)
    SHADER_UNIFORM_IVEC3 = 6,
    ivec4 = 7,  // Shader uniform type: ivec4 (4 int)
    SHADER_UNIFORM_IVEC4 = 7,
    sampler2d = 8,  // Shader uniform type: sampler2d
    SHADER_UNIFORM_SAMPLER2D = 8,
}

// Shader attribute data types
enum ShaderAttributeDataType {
    float = 0,  // Shader attribute type: float
    SHADER_ATTRIB_FLOAT = 0,
    vec2 = 1,  // Shader attribute type: vec2 (2 float)
    SHADER_ATTRIB_VEC2 = 1,
    vec3 = 2,  // Shader attribute type: vec3 (3 float)
    SHADER_ATTRIB_VEC3 = 2,
    vec4 = 3,  // Shader attribute type: vec4 (4 float)
    SHADER_ATTRIB_VEC4 = 3,
}

// Pixel formats
// NOTE: Support depends on OpenGL version and platform
enum PixelFormat {
    uncompressed_grayscale = 1,  // 8 bit per pixel (no alpha)
    PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    uncompressed_gray_alpha = 2,  // 8*2 bpp (2 channels)
    PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2,
    uncompressed_r5g6b5 = 3,  // 16 bpp
    PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3,
    uncompressed_r8g8b8 = 4,  // 24 bpp
    PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4,
    uncompressed_r5g5b5a1 = 5,  // 16 bpp (1 bit alpha)
    PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5,
    uncompressed_r4g4b4a4 = 6,  // 16 bpp (4 bit alpha)
    PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6,
    uncompressed_r8g8b8a8 = 7,  // 32 bpp
    PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7,
    uncompressed_r32 = 8,  // 32 bpp (1 channel - float)
    PIXELFORMAT_UNCOMPRESSED_R32 = 8,
    uncompressed_r32g32b32 = 9,  // 32*3 bpp (3 channels - float)
    PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9,
    uncompressed_r32g32b32a32 = 10,  // 32*4 bpp (4 channels - float)
    PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10,
    uncompressed_r16 = 11,  // 16 bpp (1 channel - half float)
    PIXELFORMAT_UNCOMPRESSED_R16 = 11,
    uncompressed_r16g16b16 = 12,  // 16*3 bpp (3 channels - half float)
    PIXELFORMAT_UNCOMPRESSED_R16G16B16 = 12,
    uncompressed_r16g16b16a16 = 13,  // 16*4 bpp (4 channels - half float)
    PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = 13,
    compressed_dxt1_rgb = 14,  // 4 bpp (no alpha)
    PIXELFORMAT_COMPRESSED_DXT1_RGB = 14,
    compressed_dxt1_rgba = 15,  // 4 bpp (1 bit alpha)
    PIXELFORMAT_COMPRESSED_DXT1_RGBA = 15,
    compressed_dxt3_rgba = 16,  // 8 bpp
    PIXELFORMAT_COMPRESSED_DXT3_RGBA = 16,
    compressed_dxt5_rgba = 17,  // 8 bpp
    PIXELFORMAT_COMPRESSED_DXT5_RGBA = 17,
    compressed_etc1_rgb = 18,  // 4 bpp
    PIXELFORMAT_COMPRESSED_ETC1_RGB = 18,
    compressed_etc2_rgb = 19,  // 4 bpp
    PIXELFORMAT_COMPRESSED_ETC2_RGB = 19,
    compressed_etc2_eac_rgba = 20,  // 8 bpp
    PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 20,
    compressed_pvrt_rgb = 21,  // 4 bpp
    PIXELFORMAT_COMPRESSED_PVRT_RGB = 21,
    compressed_pvrt_rgba = 22,  // 4 bpp
    PIXELFORMAT_COMPRESSED_PVRT_RGBA = 22,
    compressed_astc_4x4_rgba = 23,  // 8 bpp
    PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 23,
    compressed_astc_8x8_rgba = 24,  // 2 bpp
    PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 24,
}

// Texture parameters: filter mode
enum TextureFilter {
    point = 0,  // No filter, just pixel approximation
    TEXTURE_FILTER_POINT = 0,
    bilinear = 1,  // Linear filtering
    TEXTURE_FILTER_BILINEAR = 1,
    trilinear = 2,  // Trilinear filtering (linear with mipmaps)
    TEXTURE_FILTER_TRILINEAR = 2,
    anisotropic_4x = 3,  // Anisotropic filtering 4x
    TEXTURE_FILTER_ANISOTROPIC_4X = 3,
    anisotropic_8x = 4,  // Anisotropic filtering 8x
    TEXTURE_FILTER_ANISOTROPIC_8X = 4,
    anisotropic_16x = 5,  // Anisotropic filtering 16x
    TEXTURE_FILTER_ANISOTROPIC_16X = 5,
}

// Texture parameters: wrap mode
enum TextureWrap {
    repeat = 0,  // Repeats texture in tiled mode
    TEXTURE_WRAP_REPEAT = 0,
    clamp = 1,  // Clamps texture to edge pixel in tiled mode
    TEXTURE_WRAP_CLAMP = 1,
    mirror_repeat = 2,  // Mirrors and repeats the texture in tiled mode
    TEXTURE_WRAP_MIRROR_REPEAT = 2,
    mirror_clamp = 3,  // Mirrors and clamps to border the texture in tiled mode
    TEXTURE_WRAP_MIRROR_CLAMP = 3,
}

// Cubemap layouts
enum CubemapLayout {
    auto_detect = 0,  // Automatically detect layout type
    CUBEMAP_LAYOUT_AUTO_DETECT = 0,
    line_vertical = 1,  // Layout is defined by a vertical line with faces
    CUBEMAP_LAYOUT_LINE_VERTICAL = 1,
    line_horizontal = 2,  // Layout is defined by a horizontal line with faces
    CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2,
    cross_3_by_4 = 3,  // Layout is defined by a 3x4 cross with cubemap faces
    CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3,
    cross_4_by_3 = 4,  // Layout is defined by a 4x3 cross with cubemap faces
    CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4,
    panorama = 5,  // Layout is defined by a panorama image (equirrectangular map)
    CUBEMAP_LAYOUT_PANORAMA = 5,
}

// Font type, defines generation method
enum FontType {
    default = 0,  // Default font generation, anti-aliased
    FONT_DEFAULT = 0,
    bitmap = 1,  // Bitmap font generation, no anti-aliasing
    FONT_BITMAP = 1,
    sdf = 2,  // SDF font generation, requires external shader
    FONT_SDF = 2,
}

// Color blending modes (pre-defined)
enum BlendMode {
    alpha = 0,  // Blend textures considering alpha (default)
    BLEND_ALPHA = 0,
    additive = 1,  // Blend textures adding colors
    BLEND_ADDITIVE = 1,
    multiplied = 2,  // Blend textures multiplying colors
    BLEND_MULTIPLIED = 2,
    add_colors = 3,  // Blend textures adding colors (alternative)
    BLEND_ADD_COLORS = 3,
    subtract_colors = 4,  // Blend textures subtracting colors (alternative)
    BLEND_SUBTRACT_COLORS = 4,
    alpha_premultiply = 5,  // Blend premultiplied textures considering alpha
    BLEND_ALPHA_PREMULTIPLY = 5,
    custom = 6,  // Blend textures using custom src/dst factors (use rlSetBlendFactors())
    BLEND_CUSTOM = 6,
    custom_separate = 7,  // Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
    BLEND_CUSTOM_SEPARATE = 7,
}

// Gesture
// NOTE: Provided as bit-wise flags to enable only desired gestures
enum Gesture {
    none = 0,  // No gesture
    GESTURE_NONE = 0,
    tap = 1,  // Tap gesture
    GESTURE_TAP = 1,
    doubletap = 2,  // Double tap gesture
    GESTURE_DOUBLETAP = 2,
    hold = 4,  // Hold gesture
    GESTURE_HOLD = 4,
    drag = 8,  // Drag gesture
    GESTURE_DRAG = 8,
    swipe_right = 16,  // Swipe right gesture
    GESTURE_SWIPE_RIGHT = 16,
    swipe_left = 32,  // Swipe left gesture
    GESTURE_SWIPE_LEFT = 32,
    swipe_up = 64,  // Swipe up gesture
    GESTURE_SWIPE_UP = 64,
    swipe_down = 128,  // Swipe down gesture
    GESTURE_SWIPE_DOWN = 128,
    pinch_in = 256,  // Pinch in gesture
    GESTURE_PINCH_IN = 256,
    pinch_out = 512,  // Pinch out gesture
    GESTURE_PINCH_OUT = 512,
}

// Camera system modes
enum CameraMode {
    custom = 0,  // Custom camera
    CAMERA_CUSTOM = 0,
    free = 1,  // Free camera
    CAMERA_FREE = 1,
    orbital = 2,  // Orbital camera
    CAMERA_ORBITAL = 2,
    first_person = 3,  // First person camera
    CAMERA_FIRST_PERSON = 3,
    third_person = 4,  // Third person camera
    CAMERA_THIRD_PERSON = 4,
}

// Camera projection
enum CameraProjection {
    perspective = 0,  // Perspective projection
    CAMERA_PERSPECTIVE = 0,
    orthographic = 1,  // Orthographic projection
    CAMERA_ORTHOGRAPHIC = 1,
}


// N-patch layout
enum NPatchLayout {
    9_patch = 0,  // Npatch layout: 3x3 tiles
    NPATCH_NINE_PATCH = 0,
    3_patch_vertical = 1,  // Npatch layout: 1x3 tiles
    NPATCH_THREE_PATCH_VERTICAL = 1,
    3_patch_horizontal = 2,  // Npatch layout: 3x1 tiles
    NPATCH_THREE_PATCH_HORIZONTAL = 2,
}

