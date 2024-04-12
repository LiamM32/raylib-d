module raylib.enums;

// System/Window config flags
enum ConfigFlags {
    VSYNC_HINT = 64,  // Set to try enabling V-Sync on GPU
    deprecated FLAG_VSYNC_HINT = VSYNC_HINT,
    FULLSCREEN_MODE = 2,  // Set to run program in fullscreen
    deprecated FLAG_FULLSCREEN_MODE = FULLSCREEN_MODE,
    WINDOW_RESIZABLE = 4,  // Set to allow resizable window
    deprecated FLAG_WINDOW_RESIZABLE = WINDOW_RESIZABLE,
    WINDOW_UNDECORATED = 8,  // Set to disable window decoration (frame and buttons)
    deprecated FLAG_WINDOW_UNDECORATED = WINDOW_UNDECORATED,
    WINDOW_HIDDEN = 128,  // Set to hide window
    deprecated FLAG_WINDOW_HIDDEN = WINDOW_HIDDEN,
    WINDOW_MINIMIZED = 512,  // Set to minimize window (iconify)
    deprecated FLAG_WINDOW_MINIMIZED = WINDOW_MINIMIZED,
    WINDOW_MAXIMIZED = 1024,  // Set to maximize window (expanded to monitor)
    deprecated FLAG_WINDOW_MAXIMIZED = WINDOW_MAXIMIZED,
    WINDOW_UNFOCUSED = 2048,  // Set to window non focused
    deprecated FLAG_WINDOW_UNFOCUSED = WINDOW_UNFOCUSED,
    WINDOW_TOPMOST = 4096,  // Set to window always on top
    deprecated FLAG_WINDOW_TOPMOST = WINDOW_TOPMOST,
    WINDOW_ALWAYS_RUN = 256,  // Set to allow windows running while minimized
    deprecated FLAG_WINDOW_ALWAYS_RUN = WINDOW_ALWAYS_RUN,
    WINDOW_TRANSPARENT = 16,  // Set to allow transparent framebuffer
    deprecated FLAG_WINDOW_TRANSPARENT = WINDOW_TRANSPARENT,
    WINDOW_HIGHDPI = 8192,  // Set to support HighDPI
    deprecated FLAG_WINDOW_HIGHDPI = WINDOW_HIGHDPI,
    WINDOW_MOUSE_PASSTHROUGH = 16384,  // Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
    deprecated FLAG_WINDOW_MOUSE_PASSTHROUGH = WINDOW_MOUSE_PASSTHROUGH,
    BORDERLESS_WINDOWED_MODE = 32768,  // Set to run program in borderless windowed mode
    deprecated FLAG_BORDERLESS_WINDOWED_MODE = BORDERLESS_WINDOWED_MODE,
    MSAA_4X_HINT = 32,  // Set to try enabling MSAA 4X
    deprecated FLAG_MSAA_4X_HINT = MSAA_4X_HINT,
    INTERLACED_HINT = 65536,  // Set to try enabling interlaced video format (for V3D)
    deprecated FLAG_INTERLACED_HINT = INTERLACED_HINT,
}

// Trace log level
enum TraceLogLevel {
    ALL = 0,  // Display all logs
    deprecated LOG_ALL = ALL,
    TRACE = 1,  // Trace logging, intended for internal use only
    deprecated LOG_TRACE = TRACE,
    DEBUG = 2,  // Debug logging, used for internal debugging, it should be disabled on release builds
    deprecated LOG_DEBUG = DEBUG,
    INFO = 3,  // Info logging, used for program execution info
    deprecated LOG_INFO = INFO,
    WARNING = 4,  // Warning logging, used on recoverable failures
    deprecated LOG_WARNING = WARNING,
    ERROR = 5,  // Error logging, used on unrecoverable failures
    deprecated LOG_ERROR = ERROR,
    FATAL = 6,  // Fatal logging, used to abort program: exit(EXIT_FAILURE)
    deprecated LOG_FATAL = FATAL,
    NONE = 7,  // Disable logging
    deprecated LOG_NONE = NONE,
}

// Keyboard keys (US keyboard layout)
enum KeyboardKey {
    NULL = 0,  // Key: NULL, used for no key pressed
    deprecated KEY_NULL = NULL,
    APOSTROPHE = 39,  // Key: '
    deprecated KEY_APOSTROPHE = APOSTROPHE,
    COMMA = 44,  // Key: ,
    deprecated KEY_COMMA = COMMA,
    MINUS = 45,  // Key: -
    deprecated KEY_MINUS = MINUS,
    PERIOD = 46,  // Key: .
    deprecated KEY_PERIOD = PERIOD,
    SLASH = 47,  // Key: /
    deprecated KEY_SLASH = SLASH,
    ZERO = 48,  // Key: 0
    deprecated KEY_ZERO = ZERO,
    ONE = 49,  // Key: 1
    deprecated KEY_ONE = ONE,
    TWO = 50,  // Key: 2
    deprecated KEY_TWO = TWO,
    THREE = 51,  // Key: 3
    deprecated KEY_THREE = THREE,
    FOUR = 52,  // Key: 4
    deprecated KEY_FOUR = FOUR,
    FIVE = 53,  // Key: 5
    deprecated KEY_FIVE = FIVE,
    SIX = 54,  // Key: 6
    deprecated KEY_SIX = SIX,
    SEVEN = 55,  // Key: 7
    deprecated KEY_SEVEN = SEVEN,
    EIGHT = 56,  // Key: 8
    deprecated KEY_EIGHT = EIGHT,
    NINE = 57,  // Key: 9
    deprecated KEY_NINE = NINE,
    SEMICOLON = 59,  // Key: ;
    deprecated KEY_SEMICOLON = SEMICOLON,
    EQUAL = 61,  // Key: =
    deprecated KEY_EQUAL = EQUAL,
    A = 65,  // Key: A | a
    deprecated KEY_A = A,
    B = 66,  // Key: B | b
    deprecated KEY_B = B,
    C = 67,  // Key: C | c
    deprecated KEY_C = C,
    D = 68,  // Key: D | d
    deprecated KEY_D = D,
    E = 69,  // Key: E | e
    deprecated KEY_E = E,
    F = 70,  // Key: F | f
    deprecated KEY_F = F,
    G = 71,  // Key: G | g
    deprecated KEY_G = G,
    H = 72,  // Key: H | h
    deprecated KEY_H = H,
    I = 73,  // Key: I | i
    deprecated KEY_I = I,
    J = 74,  // Key: J | j
    deprecated KEY_J = J,
    K = 75,  // Key: K | k
    deprecated KEY_K = K,
    L = 76,  // Key: L | l
    deprecated KEY_L = L,
    M = 77,  // Key: M | m
    deprecated KEY_M = M,
    N = 78,  // Key: N | n
    deprecated KEY_N = N,
    O = 79,  // Key: O | o
    deprecated KEY_O = O,
    P = 80,  // Key: P | p
    deprecated KEY_P = P,
    Q = 81,  // Key: Q | q
    deprecated KEY_Q = Q,
    R = 82,  // Key: R | r
    deprecated KEY_R = R,
    S = 83,  // Key: S | s
    deprecated KEY_S = S,
    T = 84,  // Key: T | t
    deprecated KEY_T = T,
    U = 85,  // Key: U | u
    deprecated KEY_U = U,
    V = 86,  // Key: V | v
    deprecated KEY_V = V,
    W = 87,  // Key: W | w
    deprecated KEY_W = W,
    X = 88,  // Key: X | x
    deprecated KEY_X = X,
    Y = 89,  // Key: Y | y
    deprecated KEY_Y = Y,
    Z = 90,  // Key: Z | z
    deprecated KEY_Z = Z,
    LEFT_BRACKET = 91,  // Key: [
    deprecated KEY_LEFT_BRACKET = LEFT_BRACKET,
    BACKSLASH = 92,  // Key: '\'
    deprecated KEY_BACKSLASH = BACKSLASH,
    RIGHT_BRACKET = 93,  // Key: ]
    deprecated KEY_RIGHT_BRACKET = RIGHT_BRACKET,
    GRAVE = 96,  // Key: `
    deprecated KEY_GRAVE = GRAVE,
    SPACE = 32,  // Key: Space
    deprecated KEY_SPACE = SPACE,
    ESCAPE = 256,  // Key: Esc
    deprecated KEY_ESCAPE = ESCAPE,
    ENTER = 257,  // Key: Enter
    deprecated KEY_ENTER = ENTER,
    TAB = 258,  // Key: Tab
    deprecated KEY_TAB = TAB,
    BACKSPACE = 259,  // Key: Backspace
    deprecated KEY_BACKSPACE = BACKSPACE,
    INSERT = 260,  // Key: Ins
    deprecated KEY_INSERT = INSERT,
    DELETE = 261,  // Key: Del
    deprecated KEY_DELETE = DELETE,
    RIGHT = 262,  // Key: Cursor right
    deprecated KEY_RIGHT = RIGHT,
    LEFT = 263,  // Key: Cursor left
    deprecated KEY_LEFT = LEFT,
    DOWN = 264,  // Key: Cursor down
    deprecated KEY_DOWN = DOWN,
    UP = 265,  // Key: Cursor up
    deprecated KEY_UP = UP,
    PAGE_UP = 266,  // Key: Page up
    deprecated KEY_PAGE_UP = PAGE_UP,
    PAGE_DOWN = 267,  // Key: Page down
    deprecated KEY_PAGE_DOWN = PAGE_DOWN,
    HOME = 268,  // Key: Home
    deprecated KEY_HOME = HOME,
    END = 269,  // Key: End
    deprecated KEY_END = END,
    CAPS_LOCK = 280,  // Key: Caps lock
    deprecated KEY_CAPS_LOCK = CAPS_LOCK,
    SCROLL_LOCK = 281,  // Key: Scroll down
    deprecated KEY_SCROLL_LOCK = SCROLL_LOCK,
    NUM_LOCK = 282,  // Key: Num lock
    deprecated KEY_NUM_LOCK = NUM_LOCK,
    PRINT_SCREEN = 283,  // Key: Print screen
    deprecated KEY_PRINT_SCREEN = PRINT_SCREEN,
    PAUSE = 284,  // Key: Pause
    deprecated KEY_PAUSE = PAUSE,
    F1 = 290,  // Key: F1
    deprecated KEY_F1 = F1,
    F2 = 291,  // Key: F2
    deprecated KEY_F2 = F2,
    F3 = 292,  // Key: F3
    deprecated KEY_F3 = F3,
    F4 = 293,  // Key: F4
    deprecated KEY_F4 = F4,
    F5 = 294,  // Key: F5
    deprecated KEY_F5 = F5,
    F6 = 295,  // Key: F6
    deprecated KEY_F6 = F6,
    F7 = 296,  // Key: F7
    deprecated KEY_F7 = F7,
    F8 = 297,  // Key: F8
    deprecated KEY_F8 = F8,
    F9 = 298,  // Key: F9
    deprecated KEY_F9 = F9,
    F10 = 299,  // Key: F10
    deprecated KEY_F10 = F10,
    F11 = 300,  // Key: F11
    deprecated KEY_F11 = F11,
    F12 = 301,  // Key: F12
    deprecated KEY_F12 = F12,
    LEFT_SHIFT = 340,  // Key: Shift left
    deprecated KEY_LEFT_SHIFT = LEFT_SHIFT,
    LEFT_CONTROL = 341,  // Key: Control left
    deprecated KEY_LEFT_CONTROL = LEFT_CONTROL,
    LEFT_ALT = 342,  // Key: Alt left
    deprecated KEY_LEFT_ALT = LEFT_ALT,
    LEFT_SUPER = 343,  // Key: Super left
    deprecated KEY_LEFT_SUPER = LEFT_SUPER,
    RIGHT_SHIFT = 344,  // Key: Shift right
    deprecated KEY_RIGHT_SHIFT = RIGHT_SHIFT,
    RIGHT_CONTROL = 345,  // Key: Control right
    deprecated KEY_RIGHT_CONTROL = RIGHT_CONTROL,
    RIGHT_ALT = 346,  // Key: Alt right
    deprecated KEY_RIGHT_ALT = RIGHT_ALT,
    RIGHT_SUPER = 347,  // Key: Super right
    deprecated KEY_RIGHT_SUPER = RIGHT_SUPER,
    KB_MENU = 348,  // Key: KB menu
    deprecated KEY_KB_MENU = KB_MENU,
    KP_0 = 320,  // Key: Keypad 0
    deprecated KEY_KP_0 = KP_0,
    KP_1 = 321,  // Key: Keypad 1
    deprecated KEY_KP_1 = KP_1,
    KP_2 = 322,  // Key: Keypad 2
    deprecated KEY_KP_2 = KP_2,
    KP_3 = 323,  // Key: Keypad 3
    deprecated KEY_KP_3 = KP_3,
    KP_4 = 324,  // Key: Keypad 4
    deprecated KEY_KP_4 = KP_4,
    KP_5 = 325,  // Key: Keypad 5
    deprecated KEY_KP_5 = KP_5,
    KP_6 = 326,  // Key: Keypad 6
    deprecated KEY_KP_6 = KP_6,
    KP_7 = 327,  // Key: Keypad 7
    deprecated KEY_KP_7 = KP_7,
    KP_8 = 328,  // Key: Keypad 8
    deprecated KEY_KP_8 = KP_8,
    KP_9 = 329,  // Key: Keypad 9
    deprecated KEY_KP_9 = KP_9,
    KP_DECIMAL = 330,  // Key: Keypad .
    deprecated KEY_KP_DECIMAL = KP_DECIMAL,
    KP_DIVIDE = 331,  // Key: Keypad /
    deprecated KEY_KP_DIVIDE = KP_DIVIDE,
    KP_MULTIPLY = 332,  // Key: Keypad *
    deprecated KEY_KP_MULTIPLY = KP_MULTIPLY,
    KP_SUBTRACT = 333,  // Key: Keypad -
    deprecated KEY_KP_SUBTRACT = KP_SUBTRACT,
    KP_ADD = 334,  // Key: Keypad +
    deprecated KEY_KP_ADD = KP_ADD,
    KP_ENTER = 335,  // Key: Keypad Enter
    deprecated KEY_KP_ENTER = KP_ENTER,
    KP_EQUAL = 336,  // Key: Keypad =
    deprecated KEY_KP_EQUAL = KP_EQUAL,
    BACK = 4,  // Key: Android back button
    deprecated KEY_BACK = BACK,
    MENU = 5,  // Key: Android menu button
    deprecated KEY_MENU = MENU,
    VOLUME_UP = 24,  // Key: Android volume up button
    deprecated KEY_VOLUME_UP = VOLUME_UP,
    VOLUME_DOWN = 25,  // Key: Android volume down button
    deprecated KEY_VOLUME_DOWN = VOLUME_DOWN,
}

// Mouse buttons
enum MouseButton {
    LEFT = 0,  // Mouse button left
    deprecated MOUSE_BUTTON_LEFT = LEFT,
    RIGHT = 1,  // Mouse button right
    deprecated MOUSE_BUTTON_RIGHT = RIGHT,
    MIDDLE = 2,  // Mouse button middle (pressed wheel)
    deprecated MOUSE_BUTTON_MIDDLE = MIDDLE,
    SIDE = 3,  // Mouse button side (advanced mouse device)
    deprecated MOUSE_BUTTON_SIDE = SIDE,
    EXTRA = 4,  // Mouse button extra (advanced mouse device)
    deprecated MOUSE_BUTTON_EXTRA = EXTRA,
    FORWARD = 5,  // Mouse button forward (advanced mouse device)
    deprecated MOUSE_BUTTON_FORWARD = FORWARD,
    BACK = 6,  // Mouse button back (advanced mouse device)
    deprecated MOUSE_BUTTON_BACK = BACK,
}

// Mouse cursor
enum MouseCursor {
    DEFAULT = 0,  // Default pointer shape
    deprecated MOUSE_CURSOR_DEFAULT = DEFAULT,
    ARROW = 1,  // Arrow shape
    deprecated MOUSE_CURSOR_ARROW = ARROW,
    IBEAM = 2,  // Text writing cursor shape
    deprecated MOUSE_CURSOR_IBEAM = IBEAM,
    CROSSHAIR = 3,  // Cross shape
    deprecated MOUSE_CURSOR_CROSSHAIR = CROSSHAIR,
    POINTING_HAND = 4,  // Pointing hand cursor
    deprecated MOUSE_CURSOR_POINTING_HAND = POINTING_HAND,
    RESIZE_EW = 5,  // Horizontal resize/move arrow shape
    deprecated MOUSE_CURSOR_RESIZE_EW = RESIZE_EW,
    RESIZE_NS = 6,  // Vertical resize/move arrow shape
    deprecated MOUSE_CURSOR_RESIZE_NS = RESIZE_NS,
    RESIZE_NWSE = 7,  // Top-left to bottom-right diagonal resize/move arrow shape
    deprecated MOUSE_CURSOR_RESIZE_NWSE = RESIZE_NWSE,
    RESIZE_NESW = 8,  // The top-right to bottom-left diagonal resize/move arrow shape
    deprecated MOUSE_CURSOR_RESIZE_NESW = RESIZE_NESW,
    RESIZE_ALL = 9,  // The omnidirectional resize/move cursor shape
    deprecated MOUSE_CURSOR_RESIZE_ALL = RESIZE_ALL,
    NOT_ALLOWED = 10,  // The operation-not-allowed shape
    deprecated MOUSE_CURSOR_NOT_ALLOWED = NOT_ALLOWED,
}

// Gamepad buttons
enum GamepadButton {
    UNKNOWN = 0,  // Unknown button, just for error checking
    deprecated GAMEPAD_BUTTON_UNKNOWN = UNKNOWN,
    LEFT_FACE_UP = 1,  // Gamepad left DPAD up button
    deprecated GAMEPAD_BUTTON_LEFT_FACE_UP = LEFT_FACE_UP,
    LEFT_FACE_RIGHT = 2,  // Gamepad left DPAD right button
    deprecated GAMEPAD_BUTTON_LEFT_FACE_RIGHT = LEFT_FACE_RIGHT,
    LEFT_FACE_DOWN = 3,  // Gamepad left DPAD down button
    deprecated GAMEPAD_BUTTON_LEFT_FACE_DOWN = LEFT_FACE_DOWN,
    LEFT_FACE_LEFT = 4,  // Gamepad left DPAD left button
    deprecated GAMEPAD_BUTTON_LEFT_FACE_LEFT = LEFT_FACE_LEFT,
    RIGHT_FACE_UP = 5,  // Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
    deprecated GAMEPAD_BUTTON_RIGHT_FACE_UP = RIGHT_FACE_UP,
    RIGHT_FACE_RIGHT = 6,  // Gamepad right button right (i.e. PS3: Circle, Xbox: B)
    deprecated GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = RIGHT_FACE_RIGHT,
    RIGHT_FACE_DOWN = 7,  // Gamepad right button down (i.e. PS3: Cross, Xbox: A)
    deprecated GAMEPAD_BUTTON_RIGHT_FACE_DOWN = RIGHT_FACE_DOWN,
    RIGHT_FACE_LEFT = 8,  // Gamepad right button left (i.e. PS3: Square, Xbox: X)
    deprecated GAMEPAD_BUTTON_RIGHT_FACE_LEFT = RIGHT_FACE_LEFT,
    LEFT_TRIGGER_1 = 9,  // Gamepad top/back trigger left (first), it could be a trailing button
    deprecated GAMEPAD_BUTTON_LEFT_TRIGGER_1 = LEFT_TRIGGER_1,
    LEFT_TRIGGER_2 = 10,  // Gamepad top/back trigger left (second), it could be a trailing button
    deprecated GAMEPAD_BUTTON_LEFT_TRIGGER_2 = LEFT_TRIGGER_2,
    RIGHT_TRIGGER_1 = 11,  // Gamepad top/back trigger right (one), it could be a trailing button
    deprecated GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = RIGHT_TRIGGER_1,
    RIGHT_TRIGGER_2 = 12,  // Gamepad top/back trigger right (second), it could be a trailing button
    deprecated GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = RIGHT_TRIGGER_2,
    MIDDLE_LEFT = 13,  // Gamepad center buttons, left one (i.e. PS3: Select)
    deprecated GAMEPAD_BUTTON_MIDDLE_LEFT = MIDDLE_LEFT,
    MIDDLE = 14,  // Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
    deprecated GAMEPAD_BUTTON_MIDDLE = MIDDLE,
    MIDDLE_RIGHT = 15,  // Gamepad center buttons, right one (i.e. PS3: Start)
    deprecated GAMEPAD_BUTTON_MIDDLE_RIGHT = MIDDLE_RIGHT,
    LEFT_THUMB = 16,  // Gamepad joystick pressed button left
    deprecated GAMEPAD_BUTTON_LEFT_THUMB = LEFT_THUMB,
    RIGHT_THUMB = 17,  // Gamepad joystick pressed button right
    deprecated GAMEPAD_BUTTON_RIGHT_THUMB = RIGHT_THUMB,
}

// Gamepad axis
enum GamepadAxis {
    LEFT_X = 0,  // Gamepad left stick X axis
    deprecated GAMEPAD_AXIS_LEFT_X = LEFT_X,
    LEFT_Y = 1,  // Gamepad left stick Y axis
    deprecated GAMEPAD_AXIS_LEFT_Y = LEFT_Y,
    RIGHT_X = 2,  // Gamepad right stick X axis
    deprecated GAMEPAD_AXIS_RIGHT_X = RIGHT_X,
    RIGHT_Y = 3,  // Gamepad right stick Y axis
    deprecated GAMEPAD_AXIS_RIGHT_Y = RIGHT_Y,
    LEFT_TRIGGER = 4,  // Gamepad back trigger left, pressure level: [1..-1]
    deprecated GAMEPAD_AXIS_LEFT_TRIGGER = LEFT_TRIGGER,
    RIGHT_TRIGGER = 5,  // Gamepad back trigger right, pressure level: [1..-1]
    deprecated GAMEPAD_AXIS_RIGHT_TRIGGER = RIGHT_TRIGGER,
}

// Material map index
enum MaterialMapIndex {
    ALBEDO = 0,  // Albedo material (same as: MATERIAL_MAP_DIFFUSE)
    deprecated MATERIAL_MAP_ALBEDO = ALBEDO,
    METALNESS = 1,  // Metalness material (same as: MATERIAL_MAP_SPECULAR)
    deprecated MATERIAL_MAP_METALNESS = METALNESS,
    NORMAL = 2,  // Normal material
    deprecated MATERIAL_MAP_NORMAL = NORMAL,
    ROUGHNESS = 3,  // Roughness material
    deprecated MATERIAL_MAP_ROUGHNESS = ROUGHNESS,
    OCCLUSION = 4,  // Ambient occlusion material
    deprecated MATERIAL_MAP_OCCLUSION = OCCLUSION,
    EMISSION = 5,  // Emission material
    deprecated MATERIAL_MAP_EMISSION = EMISSION,
    HEIGHT = 6,  // Heightmap material
    deprecated MATERIAL_MAP_HEIGHT = HEIGHT,
    CUBEMAP = 7,  // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    deprecated MATERIAL_MAP_CUBEMAP = CUBEMAP,
    IRRADIANCE = 8,  // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    deprecated MATERIAL_MAP_IRRADIANCE = IRRADIANCE,
    PREFILTER = 9,  // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
    deprecated MATERIAL_MAP_PREFILTER = PREFILTER,
    BRDF = 10,  // Brdf material
    deprecated MATERIAL_MAP_BRDF = BRDF,
}

// Shader location index
enum ShaderLocationIndex {
    VERTEX_POSITION = 0,  // Shader location: vertex attribute: position
    deprecated SHADER_LOC_VERTEX_POSITION = VERTEX_POSITION,
    VERTEX_TEXCOORD01 = 1,  // Shader location: vertex attribute: texcoord01
    deprecated SHADER_LOC_VERTEX_TEXCOORD01 = VERTEX_TEXCOORD01,
    VERTEX_TEXCOORD02 = 2,  // Shader location: vertex attribute: texcoord02
    deprecated SHADER_LOC_VERTEX_TEXCOORD02 = VERTEX_TEXCOORD02,
    VERTEX_NORMAL = 3,  // Shader location: vertex attribute: normal
    deprecated SHADER_LOC_VERTEX_NORMAL = VERTEX_NORMAL,
    VERTEX_TANGENT = 4,  // Shader location: vertex attribute: tangent
    deprecated SHADER_LOC_VERTEX_TANGENT = VERTEX_TANGENT,
    VERTEX_COLOR = 5,  // Shader location: vertex attribute: color
    deprecated SHADER_LOC_VERTEX_COLOR = VERTEX_COLOR,
    MATRIX_MVP = 6,  // Shader location: matrix uniform: model-view-projection
    deprecated SHADER_LOC_MATRIX_MVP = MATRIX_MVP,
    MATRIX_VIEW = 7,  // Shader location: matrix uniform: view (camera transform)
    deprecated SHADER_LOC_MATRIX_VIEW = MATRIX_VIEW,
    MATRIX_PROJECTION = 8,  // Shader location: matrix uniform: projection
    deprecated SHADER_LOC_MATRIX_PROJECTION = MATRIX_PROJECTION,
    MATRIX_MODEL = 9,  // Shader location: matrix uniform: model (transform)
    deprecated SHADER_LOC_MATRIX_MODEL = MATRIX_MODEL,
    MATRIX_NORMAL = 10,  // Shader location: matrix uniform: normal
    deprecated SHADER_LOC_MATRIX_NORMAL = MATRIX_NORMAL,
    VECTOR_VIEW = 11,  // Shader location: vector uniform: view
    deprecated SHADER_LOC_VECTOR_VIEW = VECTOR_VIEW,
    COLOR_DIFFUSE = 12,  // Shader location: vector uniform: diffuse color
    deprecated SHADER_LOC_COLOR_DIFFUSE = COLOR_DIFFUSE,
    COLOR_SPECULAR = 13,  // Shader location: vector uniform: specular color
    deprecated SHADER_LOC_COLOR_SPECULAR = COLOR_SPECULAR,
    COLOR_AMBIENT = 14,  // Shader location: vector uniform: ambient color
    deprecated SHADER_LOC_COLOR_AMBIENT = COLOR_AMBIENT,
    MAP_ALBEDO = 15,  // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
    deprecated SHADER_LOC_MAP_ALBEDO = MAP_ALBEDO,
    MAP_METALNESS = 16,  // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
    deprecated SHADER_LOC_MAP_METALNESS = MAP_METALNESS,
    MAP_NORMAL = 17,  // Shader location: sampler2d texture: normal
    deprecated SHADER_LOC_MAP_NORMAL = MAP_NORMAL,
    MAP_ROUGHNESS = 18,  // Shader location: sampler2d texture: roughness
    deprecated SHADER_LOC_MAP_ROUGHNESS = MAP_ROUGHNESS,
    MAP_OCCLUSION = 19,  // Shader location: sampler2d texture: occlusion
    deprecated SHADER_LOC_MAP_OCCLUSION = MAP_OCCLUSION,
    MAP_EMISSION = 20,  // Shader location: sampler2d texture: emission
    deprecated SHADER_LOC_MAP_EMISSION = MAP_EMISSION,
    MAP_HEIGHT = 21,  // Shader location: sampler2d texture: height
    deprecated SHADER_LOC_MAP_HEIGHT = MAP_HEIGHT,
    MAP_CUBEMAP = 22,  // Shader location: samplerCube texture: cubemap
    deprecated SHADER_LOC_MAP_CUBEMAP = MAP_CUBEMAP,
    MAP_IRRADIANCE = 23,  // Shader location: samplerCube texture: irradiance
    deprecated SHADER_LOC_MAP_IRRADIANCE = MAP_IRRADIANCE,
    MAP_PREFILTER = 24,  // Shader location: samplerCube texture: prefilter
    deprecated SHADER_LOC_MAP_PREFILTER = MAP_PREFILTER,
    MAP_BRDF = 25,  // Shader location: sampler2d texture: brdf
    deprecated SHADER_LOC_MAP_BRDF = MAP_BRDF,
}

// Shader uniform data type
enum ShaderUniformDataType {
    FLOAT = 0,  // Shader uniform type: float
    deprecated SHADER_UNIFORM_FLOAT = FLOAT,
    VEC2 = 1,  // Shader uniform type: vec2 (2 float)
    deprecated SHADER_UNIFORM_VEC2 = VEC2,
    VEC3 = 2,  // Shader uniform type: vec3 (3 float)
    deprecated SHADER_UNIFORM_VEC3 = VEC3,
    VEC4 = 3,  // Shader uniform type: vec4 (4 float)
    deprecated SHADER_UNIFORM_VEC4 = VEC4,
    INT = 4,  // Shader uniform type: int
    deprecated SHADER_UNIFORM_INT = INT,
    IVEC2 = 5,  // Shader uniform type: ivec2 (2 int)
    deprecated SHADER_UNIFORM_IVEC2 = IVEC2,
    IVEC3 = 6,  // Shader uniform type: ivec3 (3 int)
    deprecated SHADER_UNIFORM_IVEC3 = IVEC3,
    IVEC4 = 7,  // Shader uniform type: ivec4 (4 int)
    deprecated SHADER_UNIFORM_IVEC4 = IVEC4,
    SAMPLER2D = 8,  // Shader uniform type: sampler2d
    deprecated SHADER_UNIFORM_SAMPLER2D = SAMPLER2D,
}

// Shader attribute data types
enum ShaderAttributeDataType {
    FLOAT = 0,  // Shader attribute type: float
    deprecated SHADER_ATTRIB_FLOAT = FLOAT,
    VEC2 = 1,  // Shader attribute type: vec2 (2 float)
    deprecated SHADER_ATTRIB_VEC2 = VEC2,
    VEC3 = 2,  // Shader attribute type: vec3 (3 float)
    deprecated SHADER_ATTRIB_VEC3 = VEC3,
    VEC4 = 3,  // Shader attribute type: vec4 (4 float)
    deprecated SHADER_ATTRIB_VEC4 = VEC4,
}

// Pixel formats
enum PixelFormat {
    UNCOMPRESSED_GRAYSCALE = 1,  // 8 bit per pixel (no alpha)
    deprecated PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = UNCOMPRESSED_GRAYSCALE,
    UNCOMPRESSED_GRAY_ALPHA = 2,  // 8*2 bpp (2 channels)
    deprecated PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = UNCOMPRESSED_GRAY_ALPHA,
    UNCOMPRESSED_R5G6B5 = 3,  // 16 bpp
    deprecated PIXELFORMAT_UNCOMPRESSED_R5G6B5 = UNCOMPRESSED_R5G6B5,
    UNCOMPRESSED_R8G8B8 = 4,  // 24 bpp
    deprecated PIXELFORMAT_UNCOMPRESSED_R8G8B8 = UNCOMPRESSED_R8G8B8,
    UNCOMPRESSED_R5G5B5A1 = 5,  // 16 bpp (1 bit alpha)
    deprecated PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = UNCOMPRESSED_R5G5B5A1,
    UNCOMPRESSED_R4G4B4A4 = 6,  // 16 bpp (4 bit alpha)
    deprecated PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = UNCOMPRESSED_R4G4B4A4,
    UNCOMPRESSED_R8G8B8A8 = 7,  // 32 bpp
    deprecated PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = UNCOMPRESSED_R8G8B8A8,
    UNCOMPRESSED_R32 = 8,  // 32 bpp (1 channel - float)
    deprecated PIXELFORMAT_UNCOMPRESSED_R32 = UNCOMPRESSED_R32,
    UNCOMPRESSED_R32G32B32 = 9,  // 32*3 bpp (3 channels - float)
    deprecated PIXELFORMAT_UNCOMPRESSED_R32G32B32 = UNCOMPRESSED_R32G32B32,
    UNCOMPRESSED_R32G32B32A32 = 10,  // 32*4 bpp (4 channels - float)
    deprecated PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = UNCOMPRESSED_R32G32B32A32,
    UNCOMPRESSED_R16 = 11,  // 16 bpp (1 channel - half float)
    deprecated PIXELFORMAT_UNCOMPRESSED_R16 = UNCOMPRESSED_R16,
    UNCOMPRESSED_R16G16B16 = 12,  // 16*3 bpp (3 channels - half float)
    deprecated PIXELFORMAT_UNCOMPRESSED_R16G16B16 = UNCOMPRESSED_R16G16B16,
    UNCOMPRESSED_R16G16B16A16 = 13,  // 16*4 bpp (4 channels - half float)
    deprecated PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = UNCOMPRESSED_R16G16B16A16,
    COMPRESSED_DXT1_RGB = 14,  // 4 bpp (no alpha)
    deprecated PIXELFORMAT_COMPRESSED_DXT1_RGB = COMPRESSED_DXT1_RGB,
    COMPRESSED_DXT1_RGBA = 15,  // 4 bpp (1 bit alpha)
    deprecated PIXELFORMAT_COMPRESSED_DXT1_RGBA = COMPRESSED_DXT1_RGBA,
    COMPRESSED_DXT3_RGBA = 16,  // 8 bpp
    deprecated PIXELFORMAT_COMPRESSED_DXT3_RGBA = COMPRESSED_DXT3_RGBA,
    COMPRESSED_DXT5_RGBA = 17,  // 8 bpp
    deprecated PIXELFORMAT_COMPRESSED_DXT5_RGBA = COMPRESSED_DXT5_RGBA,
    COMPRESSED_ETC1_RGB = 18,  // 4 bpp
    deprecated PIXELFORMAT_COMPRESSED_ETC1_RGB = COMPRESSED_ETC1_RGB,
    COMPRESSED_ETC2_RGB = 19,  // 4 bpp
    deprecated PIXELFORMAT_COMPRESSED_ETC2_RGB = COMPRESSED_ETC2_RGB,
    COMPRESSED_ETC2_EAC_RGBA = 20,  // 8 bpp
    deprecated PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = COMPRESSED_ETC2_EAC_RGBA,
    COMPRESSED_PVRT_RGB = 21,  // 4 bpp
    deprecated PIXELFORMAT_COMPRESSED_PVRT_RGB = COMPRESSED_PVRT_RGB,
    COMPRESSED_PVRT_RGBA = 22,  // 4 bpp
    deprecated PIXELFORMAT_COMPRESSED_PVRT_RGBA = COMPRESSED_PVRT_RGBA,
    COMPRESSED_ASTC_4x4_RGBA = 23,  // 8 bpp
    deprecated PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = COMPRESSED_ASTC_4x4_RGBA,
    COMPRESSED_ASTC_8x8_RGBA = 24,  // 2 bpp
    deprecated PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = COMPRESSED_ASTC_8x8_RGBA,
}

// Texture parameters: filter mode
enum TextureFilter {
    POINT = 0,  // No filter, just pixel approximation
    deprecated TEXTURE_FILTER_POINT = POINT,
    BILINEAR = 1,  // Linear filtering
    deprecated TEXTURE_FILTER_BILINEAR = BILINEAR,
    TRILINEAR = 2,  // Trilinear filtering (linear with mipmaps)
    deprecated TEXTURE_FILTER_TRILINEAR = TRILINEAR,
    ANISOTROPIC_4X = 3,  // Anisotropic filtering 4x
    deprecated TEXTURE_FILTER_ANISOTROPIC_4X = ANISOTROPIC_4X,
    ANISOTROPIC_8X = 4,  // Anisotropic filtering 8x
    deprecated TEXTURE_FILTER_ANISOTROPIC_8X = ANISOTROPIC_8X,
    ANISOTROPIC_16X = 5,  // Anisotropic filtering 16x
    deprecated TEXTURE_FILTER_ANISOTROPIC_16X = ANISOTROPIC_16X,
}

// Texture parameters: wrap mode
enum TextureWrap {
    REPEAT = 0,  // Repeats texture in tiled mode
    deprecated TEXTURE_WRAP_REPEAT = REPEAT,
    CLAMP = 1,  // Clamps texture to edge pixel in tiled mode
    deprecated TEXTURE_WRAP_CLAMP = CLAMP,
    MIRROR_REPEAT = 2,  // Mirrors and repeats the texture in tiled mode
    deprecated TEXTURE_WRAP_MIRROR_REPEAT = MIRROR_REPEAT,
    MIRROR_CLAMP = 3,  // Mirrors and clamps to border the texture in tiled mode
    deprecated TEXTURE_WRAP_MIRROR_CLAMP = MIRROR_CLAMP,
}

// Cubemap layouts
enum CubemapLayout {
    AUTO_DETECT = 0,  // Automatically detect layout type
    deprecated CUBEMAP_LAYOUT_AUTO_DETECT = AUTO_DETECT,
    LINE_VERTICAL = 1,  // Layout is defined by a vertical line with faces
    deprecated CUBEMAP_LAYOUT_LINE_VERTICAL = LINE_VERTICAL,
    LINE_HORIZONTAL = 2,  // Layout is defined by a horizontal line with faces
    deprecated CUBEMAP_LAYOUT_LINE_HORIZONTAL = LINE_HORIZONTAL,
    CROSS_THREE_BY_FOUR = 3,  // Layout is defined by a 3x4 cross with cubemap faces
    deprecated CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = CROSS_THREE_BY_FOUR,
    CROSS_FOUR_BY_THREE = 4,  // Layout is defined by a 4x3 cross with cubemap faces
    deprecated CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = CROSS_FOUR_BY_THREE,
    PANORAMA = 5,  // Layout is defined by a panorama image (equirrectangular map)
    deprecated CUBEMAP_LAYOUT_PANORAMA = PANORAMA,
}

// Font type, defines generation method
enum FontType {
    DEFAULT = 0,  // Default font generation, anti-aliased
    deprecated FONT_DEFAULT = DEFAULT,
    BITMAP = 1,  // Bitmap font generation, no anti-aliasing
    deprecated FONT_BITMAP = BITMAP,
    SDF = 2,  // SDF font generation, requires external shader
    deprecated FONT_SDF = SDF,
}

// Color blending modes (pre-defined)
enum BlendMode {
    ALPHA = 0,  // Blend textures considering alpha (default)
    deprecated BLEND_ALPHA = ALPHA,
    ADDITIVE = 1,  // Blend textures adding colors
    deprecated BLEND_ADDITIVE = ADDITIVE,
    MULTIPLIED = 2,  // Blend textures multiplying colors
    deprecated BLEND_MULTIPLIED = MULTIPLIED,
    ADD_COLORS = 3,  // Blend textures adding colors (alternative)
    deprecated BLEND_ADD_COLORS = ADD_COLORS,
    SUBTRACT_COLORS = 4,  // Blend textures subtracting colors (alternative)
    deprecated BLEND_SUBTRACT_COLORS = SUBTRACT_COLORS,
    ALPHA_PREMULTIPLY = 5,  // Blend premultiplied textures considering alpha
    deprecated BLEND_ALPHA_PREMULTIPLY = ALPHA_PREMULTIPLY,
    CUSTOM = 6,  // Blend textures using custom src/dst factors (use rlSetBlendFactors())
    deprecated BLEND_CUSTOM = CUSTOM,
    CUSTOM_SEPARATE = 7,  // Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
    deprecated BLEND_CUSTOM_SEPARATE = CUSTOM_SEPARATE,
}

// Gesture
enum Gesture {
    NONE = 0,  // No gesture
    deprecated GESTURE_NONE = NONE,
    TAP = 1,  // Tap gesture
    deprecated GESTURE_TAP = TAP,
    DOUBLETAP = 2,  // Double tap gesture
    deprecated GESTURE_DOUBLETAP = DOUBLETAP,
    HOLD = 4,  // Hold gesture
    deprecated GESTURE_HOLD = HOLD,
    DRAG = 8,  // Drag gesture
    deprecated GESTURE_DRAG = DRAG,
    SWIPE_RIGHT = 16,  // Swipe right gesture
    deprecated GESTURE_SWIPE_RIGHT = SWIPE_RIGHT,
    SWIPE_LEFT = 32,  // Swipe left gesture
    deprecated GESTURE_SWIPE_LEFT = SWIPE_LEFT,
    SWIPE_UP = 64,  // Swipe up gesture
    deprecated GESTURE_SWIPE_UP = SWIPE_UP,
    SWIPE_DOWN = 128,  // Swipe down gesture
    deprecated GESTURE_SWIPE_DOWN = SWIPE_DOWN,
    PINCH_IN = 256,  // Pinch in gesture
    deprecated GESTURE_PINCH_IN = PINCH_IN,
    PINCH_OUT = 512,  // Pinch out gesture
    deprecated GESTURE_PINCH_OUT = PINCH_OUT,
}

// Camera system modes
enum CameraMode {
    CUSTOM = 0,  // Custom camera
    deprecated CAMERA_CUSTOM = CUSTOM,
    FREE = 1,  // Free camera
    deprecated CAMERA_FREE = FREE,
    ORBITAL = 2,  // Orbital camera
    deprecated CAMERA_ORBITAL = ORBITAL,
    FIRST_PERSON = 3,  // First person camera
    deprecated CAMERA_FIRST_PERSON = FIRST_PERSON,
    THIRD_PERSON = 4,  // Third person camera
    deprecated CAMERA_THIRD_PERSON = THIRD_PERSON,
}

// Camera projection
enum CameraProjection {
    PERSPECTIVE = 0,  // Perspective projection
    deprecated CAMERA_PERSPECTIVE = PERSPECTIVE,
    ORTHOGRAPHIC = 1,  // Orthographic projection
    deprecated CAMERA_ORTHOGRAPHIC = ORTHOGRAPHIC,
}

// N-patch layout
enum NPatchLayout {
    NINE_PATCH = 0,  // Npatch layout: 3x3 tiles
    deprecated NPATCH_NINE_PATCH = NINE_PATCH,
    THREE_PATCH_VERTICAL = 1,  // Npatch layout: 1x3 tiles
    deprecated NPATCH_THREE_PATCH_VERTICAL = THREE_PATCH_VERTICAL,
    THREE_PATCH_HORIZONTAL = 2,  // Npatch layout: 3x1 tiles
    deprecated NPATCH_THREE_PATCH_HORIZONTAL = THREE_PATCH_HORIZONTAL,
}
