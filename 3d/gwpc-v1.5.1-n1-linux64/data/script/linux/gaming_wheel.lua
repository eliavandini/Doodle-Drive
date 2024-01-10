-- Import this script in your joystick scripts

local gaming_wheel = {}

gaming_wheel.Bus = {
    PCI = 0x01,
    ISAPNP = 0x02,
    USB = 0x03,
    HIL = 0x04,
    BLUETOOTH = 0x05,
    VIRTUAL = 0x06,
    ISA = 0x10,
    I8042 = 0x11,
    XTKBD = 0x12,
    RS232 = 0x13,
    GAMEPORT = 0x14,
    PARPORT = 0x15,
    AMIGA = 0x16,
    ADB = 0x17,
    I2C = 0x18,
    HOST = 0x19,
    GSC = 0x1A,
    ATARI = 0x1B,
    SPI = 0x1C,
    RMI = 0x1D,
    CEC = 0x1E,
    INTEL_ISHTP = 0x1F,
}

gaming_wheel.Key = {
    RESERVED = 0,
    ESC = 1,
    ONE = 2,
    TWO = 3,
    THREE = 4,
    FOUR = 5,
    FIVE = 6,
    SIX = 7,
    SEVEN = 8,
    EIGHT = 9,
    NINE = 10,
    ZERO = 11,
    MINUS = 12,
    EQUAL = 13,
    BACKSPACE = 14,
    TAB = 15,
    Q = 16,
    W = 17,
    E = 18,
    R = 19,
    T = 20,
    Y = 21,
    U = 22,
    I = 23,
    O = 24,
    P = 25,
    LEFTBRACE = 26,
    RIGHTBRACE = 27,
    ENTER = 28,
    LEFTCTRL = 29,
    A = 30,
    S = 31,
    D = 32,
    F = 33,
    G = 34,
    H = 35,
    J = 36,
    K = 37,
    L = 38,
    SEMICOLON = 39,
    APOSTROPHE = 40,
    GRAVE = 41,
    LEFTSHIFT = 42,
    BACKSLASH = 43,
    Z = 44,
    X = 45,
    C = 46,
    V = 47,
    B = 48,
    N = 49,
    M = 50,
    COMMA = 51,
    DOT = 52,
    SLASH = 53,
    RIGHTSHIFT = 54,
    KPASTERISK = 55,
    LEFTALT = 56,
    SPACE = 57,
    CAPSLOCK = 58,
    F1 = 59,
    F2 = 60,
    F3 = 61,
    F4 = 62,
    F5 = 63,
    F6 = 64,
    F7 = 65,
    F8 = 66,
    F9 = 67,
    F10 = 68,
    NUMLOCK = 69,
    SCROLLLOCK = 70,
    KP7 = 71,
    KP8 = 72,
    KP9 = 73,
    KPMINUS = 74,
    KP4 = 75,
    KP5 = 76,
    KP6 = 77,
    KPPLUS = 78,
    KP1 = 79,
    KP2 = 80,
    KP3 = 81,
    KP0 = 82,
    KPDOT = 83,

    ZENKAKUHANKAKU = 85,
    TEN_2ND = 86,
    F11 = 87,
    F12 = 88,
    RO = 89,
    KATAKANA = 90,
    HIRAGANA = 91,
    HENKAN = 92,
    KATAKANAHIRAGANA = 93,
    MUHENKAN = 94,
    KPJPCOMMA = 95,
    KPENTER = 96,
    RIGHTCTRL = 97,
    KPSLASH = 98,
    SYSRQ = 99,
    RIGHTALT = 100,
    LINEFEED = 101,
    HOME = 102,
    UP = 103,
    PAGEUP = 104,
    LEFT = 105,
    RIGHT = 106,
    END = 107,
    DOWN = 108,
    PAGEDOWN = 109,
    INSERT = 110,
    DELETE = 111,
    MACRO = 112,
    MUTE = 113,
    VOLUMEDOWN = 114,
    VOLUMEUP = 115,
    POWER = 116,	--  SC System Power Down
    KPEQUAL = 117,
    KPPLUSMINUS = 118,
    PAUSE = 119,
    SCALE = 120,	--  AL Compiz Scale (Expose)

    KPCOMMA = 121,
    HANGEUL = 122,
    HANGUEL = 122,
    HANJA = 123,
    YEN = 124,
    LEFTMETA = 125,
    RIGHTMETA = 126,
    COMPOSE = 127,

    STOP = 128,	--  AC Stop
    AGAIN = 129,
    PROPS = 130,	--  AC Properties
    UNDO = 131,	--  AC Undo
    FRONT = 132,
    COPY = 133,	--  AC Copy
    OPEN = 134,	--  AC Open
    PASTE = 135,	--  AC Paste
    FIND = 136,	--  AC Search
    CUT = 137,	--  AC Cut
    HELP = 138,	--  AL Integrated Help Center
    MENU = 139,	--  Menu (show menu)
    CALC = 140,	--  AL Calculator
    SETUP = 141,
    SLEEP = 142,	--  SC System Sleep
    WAKEUP = 143,	--  System Wake Up
    FILE = 144,	--  AL Local Machine Browser
    SENDFILE = 145,
    DELETEFILE = 146,
    XFER = 147,
    PROG1 = 148,
    PROG2 = 149,
    WWW = 150,	--  AL Internet Browser
    MSDOS = 151,
    COFFEE = 152,	--  AL Terminal Lock/Screensaver
    SCREENLOCK = 152,
    ROTATE_DISPLAY = 153,	--  Display orientation for e.g. tablets
    DIRECTION = 153,
    CYCLEWINDOWS = 154,
    MAIL = 155,
    BOOKMARKS = 156,	--  AC Bookmarks
    COMPUTER = 157,
    BACK = 158,	--  AC Back
    FORWARD = 159,	--  AC Forward
    CLOSECD = 160,
    EJECTCD = 161,
    EJECTCLOSECD = 162,
    NEXTSONG = 163,
    PLAYPAUSE = 164,
    PREVIOUSSONG = 165,
    STOPCD = 166,
    RECORD = 167,
    REWIND = 168,
    PHONE = 169,	--  Media Select Telephone
    ISO = 170,
    CONFIG = 171,	--  AL Consumer Control Configuration
    HOMEPAGE = 172,	--  AC Home
    REFRESH = 173,	--  AC Refresh
    EXIT = 174,	--  AC Exit
    MOVE = 175,
    EDIT = 176,
    SCROLLUP = 177,
    SCROLLDOWN = 178,
    KPLEFTPAREN = 179,
    KPRIGHTPAREN = 180,
    NEW = 181,	--  AC New
    REDO = 182,	--  AC Redo/Repeat

    F13 = 183,
    F14 = 184,
    F15 = 185,
    F16 = 186,
    F17 = 187,
    F18 = 188,
    F19 = 189,
    F20 = 190,
    F21 = 191,
    F22 = 192,
    F23 = 193,
    F24 = 194,

    PLAYCD = 200,
    PAUSECD = 201,
    PROG3 = 202,
    PROG4 = 203,
    ALL_APPLICATIONS = 204,	--  AC Desktop Show All Applications
    DASHBOARD = 204,
    SUSPEND = 205,
    CLOSE = 206,	--  AC Close
    PLAY = 207,
    FASTFORWARD = 208,
    BASSBOOST = 209,
    PRINT = 210,	--  AC Print
    HP = 211,
    CAMERA = 212,
    SOUND = 213,
    QUESTION = 214,
    EMAIL = 215,
    CHAT = 216,
    SEARCH = 217,
    CONNECT = 218,
    FINANCE = 219,	--  AL Checkbook/Finance
    SPORT = 220,
    SHOP = 221,
    ALTERASE = 222,
    CANCEL = 223,	--  AC Cancel
    BRIGHTNESSDOWN = 224,
    BRIGHTNESSUP = 225,
    MEDIA = 226,

    SWITCHVIDEOMODE = 227,	--[[ Cycle between available video
                            outputs (Monitor/LCD/TV-out/etc) ]]
    KBDILLUMTOGGLE = 228,
    KBDILLUMDOWN = 229,
    KBDILLUMUP = 230,

    SEND = 231,	--  AC Send
    REPLY = 232,	--  AC Reply
    FORWARDMAIL = 233,	--  AC Forward Msg
    SAVE = 234,	--  AC Save
    DOCUMENTS = 235,

    BATTERY = 236,

    BLUETOOTH = 237,
    WLAN = 238,
    UWB = 239,

    UNKNOWN = 240,

    VIDEO_NEXT = 241,	--  drive next video source
    VIDEO_PREV = 242,	--  drive previous video source
    BRIGHTNESS_CYCLE = 243,	--  brightness up, after max is min
    BRIGHTNESS_AUTO = 244,	--[[  Set Auto Brightness: manual
                        brightness control is off,
                        rely on ambient  ]]
    BRIGHTNESS_ZERO = 244,
    DISPLAY_OFF = 245,	--  display device to off state

    WWAN = 246,	--  Wireless WAN (LTE, UMTS, GSM, etc.)
    WIMAX = 246,
    RFKILL = 247,	--  Key that controls all radios

    MICMUTE = 248,	--  Mute / unmute the microphone

    OK = 0x160,
    SELECT = 0x161,
    GOTO = 0x162,
    CLEAR = 0x163,
    POWER2 = 0x164,
    OPTION = 0x165,
    INFO = 0x166,	--  AL OEM Features/Tips/Tutorial
    TIME = 0x167,
    VENDOR = 0x168,
    ARCHIVE = 0x169,
    PROGRAM = 0x16a,	--  Media Select Program Guide
    CHANNEL = 0x16b,
    FAVORITES = 0x16c,
    EPG = 0x16d,
    PVR = 0x16e,	--  Media Select Home
    MHP = 0x16f,
    LANGUAGE = 0x170,
    TITLE = 0x171,
    SUBTITLE = 0x172,
    ANGLE = 0x173,
    FULL_SCREEN = 0x174,	--  AC View Toggle
    ZOOM = 0x174,
    MODE = 0x175,
    KEYBOARD = 0x176,
    ASPECT_RATIO = 0x177,	--  HUTRR37: Aspect
    SCREEN = 0x177,
    PC = 0x178,	--  Media Select Computer
    TV = 0x179,	--  Media Select TV
    TV2 = 0x17a,	--  Media Select Cable
    VCR = 0x17b,	--  Media Select VCR
    VCR2 = 0x17c,	--  VCR Plus
    SAT = 0x17d,	--  Media Select Satellite
    SAT2 = 0x17e,
    CD = 0x17f,	--  Media Select CD
    TAPE = 0x180,	--  Media Select Tape
    RADIO = 0x181,
    TUNER = 0x182,	--  Media Select Tuner
    PLAYER = 0x183,
    TEXT = 0x184,
    DVD = 0x185,	--  Media Select DVD
    AUX = 0x186,
    MP3 = 0x187,
    AUDIO = 0x188,	--  AL Audio Browser
    VIDEO = 0x189,	--  AL Movie Browser
    DIRECTORY = 0x18a,
    LIST = 0x18b,
    MEMO = 0x18c,	--  Media Select Messages
    CALENDAR = 0x18d,
    RED = 0x18e,
    GREEN = 0x18f,
    YELLOW = 0x190,
    BLUE = 0x191,
    CHANNELUP = 0x192,	--  Channel Increment
    CHANNELDOWN = 0x193,	--  Channel Decrement
    FIRST = 0x194,
    LAST = 0x195,	--  Recall Last
    AB = 0x196,
    NEXT = 0x197,
    RESTART = 0x198,
    SLOW = 0x199,
    SHUFFLE = 0x19a,
    BREAK = 0x19b,
    PREVIOUS = 0x19c,
    DIGITS = 0x19d,
    TEEN = 0x19e,
    TWEN = 0x19f,
    VIDEOPHONE = 0x1a0,	--  Media Select Video Phone
    GAMES = 0x1a1,	--  Media Select Games
    ZOOMIN = 0x1a2,	--  AC Zoom In
    ZOOMOUT = 0x1a3,	--  AC Zoom Out
    ZOOMRESET = 0x1a4,	--  AC Zoom
    WORDPROCESSOR = 0x1a5,	--  AL Word Processor
    EDITOR = 0x1a6,	--  AL Text Editor
    SPREADSHEET = 0x1a7,	--  AL Spreadsheet
    GRAPHICSEDITOR = 0x1a8,	--  AL Graphics Editor
    PRESENTATION = 0x1a9,	--  AL Presentation App
    DATABASE = 0x1aa,	--  AL Database App
    NEWS = 0x1ab,	--  AL Newsreader
    VOICEMAIL = 0x1ac,	--  AL Voicemail
    ADDRESSBOOK = 0x1ad,	--  AL Contacts/Address Book
    MESSENGER = 0x1ae,	--  AL Instant Messaging
    DISPLAYTOGGLE = 0x1af,	--  Turn display (LCD) on and off
    BRIGHTNESS_TOGGLE = 0x1af,
    SPELLCHECK = 0x1b0,   --  AL Spell Check
    LOGOFF = 0x1b1,   --  AL Logoff

    DOLLAR = 0x1b2,
    EURO = 0x1b3,

    FRAMEBACK = 0x1b4,	--  Consumer - transport controls
    FRAMEFORWARD = 0x1b5,
    CONTEXT_MENU = 0x1b6,	--  GenDesc - system context menu
    MEDIA_REPEAT = 0x1b7,	--  Consumer - transport control
    TEN_CHANNELSUP = 0x1b8,	--  10 channels up (10+)
    TEN_CHANNELSDOWN = 0x1b9,	--  10 channels down (10-)
    IMAGES = 0x1ba,	--  AL Image Browser
    NOTIFICATION_CENTER = 0x1bc,	--  Show/hide the notification center
    PICKUP_PHONE = 0x1bd,	--  Answer incoming call
    HANGUP_PHONE = 0x1be,	--  Decline incoming call

    DEL_EOL = 0x1c0,
    DEL_EOS = 0x1c1,
    INS_LINE = 0x1c2,
    DEL_LINE = 0x1c3,

    FN = 0x1d0,
    FN_ESC = 0x1d1,
    FN_F1 = 0x1d2,
    FN_F2 = 0x1d3,
    FN_F3 = 0x1d4,
    FN_F4 = 0x1d5,
    FN_F5 = 0x1d6,
    FN_F6 = 0x1d7,
    FN_F7 = 0x1d8,
    FN_F8 = 0x1d9,
    FN_F9 = 0x1da,
    FN_F10 = 0x1db,
    FN_F11 = 0x1dc,
    FN_F12 = 0x1dd,
    FN_1 = 0x1de,
    FN_2 = 0x1df,
    FN_D = 0x1e0,
    FN_E = 0x1e1,
    FN_F = 0x1e2,
    FN_S = 0x1e3,
    FN_B = 0x1e4,
    FN_RIGHT_SHIFT = 0x1e5,

    BRL_DOT1 = 0x1f1,
    BRL_DOT2 = 0x1f2,
    BRL_DOT3 = 0x1f3,
    BRL_DOT4 = 0x1f4,
    BRL_DOT5 = 0x1f5,
    BRL_DOT6 = 0x1f6,
    BRL_DOT7 = 0x1f7,
    BRL_DOT8 = 0x1f8,
    BRL_DOT9 = 0x1f9,
    BRL_DOT10 = 0x1fa,

    NUMERIC_0 = 0x200,	--  used by phones, remote controls,
    NUMERIC_1 = 0x201,	--  and other keypads
    NUMERIC_2 = 0x202,
    NUMERIC_3 = 0x203,
    NUMERIC_4 = 0x204,
    NUMERIC_5 = 0x205,
    NUMERIC_6 = 0x206,
    NUMERIC_7 = 0x207,
    NUMERIC_8 = 0x208,
    NUMERIC_9 = 0x209,
    NUMERIC_STAR = 0x20a,
    NUMERIC_POUND = 0x20b,
    NUMERIC_A = 0x20c,	--  Phone key A - HUT Telephony 0xb9
    NUMERIC_B = 0x20d,
    NUMERIC_C = 0x20e,
    NUMERIC_D = 0x20f,

    CAMERA_FOCUS = 0x210,
    WPS_BUTTON = 0x211,	--  WiFi Protected Setup key

    TOUCHPAD_TOGGLE = 0x212,	--  Request switch touchpad on or off
    TOUCHPAD_ON = 0x213,
    TOUCHPAD_OFF = 0x214,

    CAMERA_ZOOMIN = 0x215,
    CAMERA_ZOOMOUT = 0x216,
    CAMERA_UP = 0x217,
    CAMERA_DOWN = 0x218,
    CAMERA_LEFT = 0x219,
    CAMERA_RIGHT = 0x21a,

    ATTENDANT_ON = 0x21b,
    ATTENDANT_OFF = 0x21c,
    ATTENDANT_TOGGLE = 0x21d,	--  Attendant call on or off
    LIGHTS_TOGGLE = 0x21e,	--  Reading light on or off

    ALS_TOGGLE = 0x230,	--  Ambient light sensor
    ROTATE_LOCK_TOGGLE = 0x231,	--  Display rotation lock

    BUTTONCONFIG = 0x240,	--  AL Button Configuration
    TASKMANAGER = 0x241,	--  AL Task/Project Manager
    JOURNAL = 0x242,	--  AL Log/Journal/Timecard
    CONTROLPANEL = 0x243,	--  AL Control Panel
    APPSELECT = 0x244,	--  AL Select Task/Application
    SCREENSAVER = 0x245,	--  AL Screen Saver
    VOICECOMMAND = 0x246,	--  Listening Voice Command
    ASSISTANT = 0x247,	--  AL Context-aware desktop assistant
    KBD_LAYOUT_NEXT = 0x248,	--  AC Next Keyboard Layout Select
    EMOJI_PICKER = 0x249,	--  Show/hide emoji picker (HUTRR101)
    DICTATE = 0x24a,	--  Start or Stop Voice Dictation Session (HUTRR99)

    BRIGHTNESS_MIN = 0x250,	--  Set Brightness to Minimum
    BRIGHTNESS_MAX = 0x251,	--  Set Brightness to Maximum

    KBDINPUTASSIST_PREV = 0x260,
    KBDINPUTASSIST_NEXT = 0x261,
    KBDINPUTASSIST_PREVGROUP = 0x262,
    KBDINPUTASSIST_NEXTGROUP = 0x263,
    KBDINPUTASSIST_ACCEPT = 0x264,
    KBDINPUTASSIST_CANCEL = 0x265,

    --  Diagonal movement keys
    RIGHT_UP = 0x266,
    RIGHT_DOWN = 0x267,
    LEFT_UP = 0x268,
    LEFT_DOWN = 0x269,

    ROOT_MENU = 0x26a, --  Show Device's Root Menu
    --  Show Top Menu of the Media (e.g. DVD)
    MEDIA_TOP_MENU = 0x26b,
    NUMERIC_11 = 0x26c,
    NUMERIC_12 = 0x26d,
    --[[
        Toggle Audio Description: refers to an audio service that helps blind and
        visually impaired consumers understand the action in a program. Note: in
        some countries this is referred to as "Video Description".
    ]]
    AUDIO_DESC = 0x26e,
    THREED_MODE = 0x26f,
    NEXT_FAVORITE = 0x270,
    STOP_RECORD = 0x271,
    PAUSE_RECORD = 0x272,
    VOD = 0x273, --  Video on Demand
    UNMUTE = 0x274,
    FASTREVERSE = 0x275,
    SLOWREVERSE = 0x276,
    --[[
        Control a data application associated with the currently viewed channel,
        e.g. teletext or data broadcast application (MHEG, MHP, HbbTV, etc.)
    ]]
    DATA = 0x277,
    ONSCREEN_KEYBOARD = 0x278,
    --  Electronic privacy screen control
    PRIVACY_SCREEN_TOGGLE = 0x279,

    --  Select an area of screen to be copied
    SELECTIVE_SCREENSHOT = 0x27a,

    --  Move the focus to the next or previous user controllable element within a UI container
    NEXT_ELEMENT = 0x27b,
    PREVIOUS_ELEMENT = 0x27c,

    --  Toggle Autopilot engagement
    AUTOPILOT_ENGAGE_TOGGLE = 0x27d,

    --  Shortcut Keys
    MARK_WAYPOINT = 0x27e,
    SOS = 0x27f,
    NAV_CHART = 0x280,
    FISHING_CHART = 0x281,
    SINGLE_RANGE_RADAR = 0x282,
    DUAL_RANGE_RADAR = 0x283,
    RADAR_OVERLAY = 0x284,
    TRADITIONAL_SONAR = 0x285,
    CLEARVU_SONAR = 0x286,
    SIDEVU_SONAR = 0x287,
    NAV_INFO = 0x288,
    BRIGHTNESS_MENU = 0x289,

    --[[
        Some keyboards have keys which do not have a defined meaning, these keys
        are intended to be programmed / bound to macros by the user. For most
        keyboards with these macro-keys the key-sequence to inject, or action to
        take, is all handled by software on the host side. So from the kernel's
        point of view these are just normal keys.

        The MACRO# codes below are intended for such keys, which may be labeled
        e.g. G1-G18, or S1 - S30. The MACRO# codes MUST NOT be used for keys
        where the marking on the key does indicate a defined meaning / purpose.

        The MACRO# codes MUST also NOT be used as fallback for when no existing
        FOO define matches the marking / purpose. In this case a new FOO
        define MUST be added.
    ]]
    MACRO1 = 0x290,
    MACRO2 = 0x291,
    MACRO3 = 0x292,
    MACRO4 = 0x293,
    MACRO5 = 0x294,
    MACRO6 = 0x295,
    MACRO7 = 0x296,
    MACRO8 = 0x297,
    MACRO9 = 0x298,
    MACRO10 = 0x299,
    MACRO11 = 0x29a,
    MACRO12 = 0x29b,
    MACRO13 = 0x29c,
    MACRO14 = 0x29d,
    MACRO15 = 0x29e,
    MACRO16 = 0x29f,
    MACRO17 = 0x2a0,
    MACRO18 = 0x2a1,
    MACRO19 = 0x2a2,
    MACRO20 = 0x2a3,
    MACRO21 = 0x2a4,
    MACRO22 = 0x2a5,
    MACRO23 = 0x2a6,
    MACRO24 = 0x2a7,
    MACRO25 = 0x2a8,
    MACRO26 = 0x2a9,
    MACRO27 = 0x2aa,
    MACRO28 = 0x2ab,
    MACRO29 = 0x2ac,
    MACRO30 = 0x2ad,

    --[[
        Some keyboards with the macro-keys described above have some extra keys
        for controlling the host-side software responsible for the macro handling:
        -A macro recording start/stop key. Note that not all keyboards which emit
        MACRO_RECORD_START will also emit MACRO_RECORD_STOP if
        MACRO_RECORD_STOP is not advertised, then MACRO_RECORD_START
        should be interpreted as a recording start/stop toggle;
        -Keys for switching between different macro (pre)sets, either a key for
        cycling through the configured presets or keys to directly select a preset.
    ]]
    MACRO_RECORD_START = 0x2b0,
    MACRO_RECORD_STOP = 0x2b1,
    MACRO_PRESET_CYCLE = 0x2b2,
    MACRO_PRESET1 = 0x2b3,
    MACRO_PRESET2 = 0x2b4,
    MACRO_PRESET3 = 0x2b5,

    --[[
        Some keyboards have a buildin LCD panel where the contents are controlled
        by the host. Often these have a number of keys directly below the LCD
        intended for controlling a menu shown on the LCD. These keys often don't
        have any labeling so we just name them KBD_LCD_MENU#
    ]]
    KBD_LCD_MENU1 = 0x2b8,
    KBD_LCD_MENU2 = 0x2b9,
    KBD_LCD_MENU3 = 0x2ba,
    KBD_LCD_MENU4 = 0x2bb,
    KBD_LCD_MENU5 = 0x2bc,

    --  We avoid low common keys in module aliases so they don't get huge.
    MIN_INTERESTING = 113,
    MAX = 0x2ff,
    CNT = (0x2ff+1),
}

gaming_wheel.Button = {
    MISC = 0x100,
    ZERO = 0x100,
    ONE = 0x101,
    TWO = 0x102,
    THREE = 0x103,
    FOUR = 0x104,
    FIVE = 0x105,
    SIX = 0x106,
    SEVEN = 0x107,
    EIGHT = 0x108,
    NINE = 0x109,

    MOUSE = 0x110,
    LEFT = 0x110,
    RIGHT = 0x111,
    MIDDLE = 0x112,
    SIDE = 0x113,
    EXTRA = 0x114,
    FORWARD = 0x115,
    BACK = 0x116,
    TASK = 0x117,

    JOYSTICK = 0x120,
    TRIGGER = 0x120,
    THUMB = 0x121,
    THUMB2 = 0x122,
    TOP = 0x123,
    TOP2 = 0x124,
    PINKIE = 0x125,
    BASE = 0x126,
    BASE2 = 0x127,
    BASE3 = 0x128,
    BASE4 = 0x129,
    BASE5 = 0x12a,
    BASE6 = 0x12b,
    DEAD = 0x12f,

    GAMEPAD = 0x130,
    SOUTH = 0x130,
    A = 0x130,
    EAST = 0x131,
    B = 0x131,
    C = 0x132,
    NORTH = 0x133,
    X = 0x133,
    WEST = 0x134,
    Y = 0x134,
    Z = 0x135,
    TL = 0x136,
    TR = 0x137,
    TL2 = 0x138,
    TR2 = 0x139,
    SELECT = 0x13a,
    START = 0x13b,
    MODE = 0x13c,
    THUMBL = 0x13d,
    THUMBR = 0x13e,

    DIGI = 0x140,
    TOOL_PEN = 0x140,
    TOOL_RUBBER = 0x141,
    TOOL_BRUSH = 0x142,
    TOOL_PENCIL = 0x143,
    TOOL_AIRBRUSH = 0x144,
    TOOL_FINGER = 0x145,
    TOOL_MOUSE = 0x146,
    TOOL_LENS = 0x147,
    TOOL_QUINTTAP = 0x148,	--  Five fingers on trackpad
    STYLUS3 = 0x149,
    TOUCH = 0x14a,
    STYLUS = 0x14b,
    STYLUS2 = 0x14c,
    TOOL_DOUBLETAP = 0x14d,
    TOOL_TRIPLETAP = 0x14e,
    TOOL_QUADTAP = 0x14f,	--  Four fingers on trackpad

    WHEEL = 0x150,
    GEAR_DOWN = 0x150,
    GEAR_UP = 0x151,

    DPAD_UP = 0x220,
    DPAD_DOWN = 0x221,
    DPAD_LEFT = 0x222,
    DPAD_RIGHT = 0x223,

    TRIGGER_HAPPY = 0x2c0,
    TRIGGER_HAPPY1 = 0x2c0,
    TRIGGER_HAPPY2 = 0x2c1,
    TRIGGER_HAPPY3 = 0x2c2,
    TRIGGER_HAPPY4 = 0x2c3,
    TRIGGER_HAPPY5 = 0x2c4,
    TRIGGER_HAPPY6 = 0x2c5,
    TRIGGER_HAPPY7 = 0x2c6,
    TRIGGER_HAPPY8 = 0x2c7,
    TRIGGER_HAPPY9 = 0x2c8,
    TRIGGER_HAPPY10 = 0x2c9,
    TRIGGER_HAPPY11 = 0x2ca,
    TRIGGER_HAPPY12 = 0x2cb,
    TRIGGER_HAPPY13 = 0x2cc,
    TRIGGER_HAPPY14 = 0x2cd,
    TRIGGER_HAPPY15 = 0x2ce,
    TRIGGER_HAPPY16 = 0x2cf,
    TRIGGER_HAPPY17 = 0x2d0,
    TRIGGER_HAPPY18 = 0x2d1,
    TRIGGER_HAPPY19 = 0x2d2,
    TRIGGER_HAPPY20 = 0x2d3,
    TRIGGER_HAPPY21 = 0x2d4,
    TRIGGER_HAPPY22 = 0x2d5,
    TRIGGER_HAPPY23 = 0x2d6,
    TRIGGER_HAPPY24 = 0x2d7,
    TRIGGER_HAPPY25 = 0x2d8,
    TRIGGER_HAPPY26 = 0x2d9,
    TRIGGER_HAPPY27 = 0x2da,
    TRIGGER_HAPPY28 = 0x2db,
    TRIGGER_HAPPY29 = 0x2dc,
    TRIGGER_HAPPY30 = 0x2dd,
    TRIGGER_HAPPY31 = 0x2de,
    TRIGGER_HAPPY32 = 0x2df,
    TRIGGER_HAPPY33 = 0x2e0,
    TRIGGER_HAPPY34 = 0x2e1,
    TRIGGER_HAPPY35 = 0x2e2,
    TRIGGER_HAPPY36 = 0x2e3,
    TRIGGER_HAPPY37 = 0x2e4,
    TRIGGER_HAPPY38 = 0x2e5,
    TRIGGER_HAPPY39 = 0x2e6,
    TRIGGER_HAPPY40 = 0x2e7,
}

gaming_wheel.RelativeAxis = {
    X = 0x00,
    Y = 0x01,
    Z = 0x02,
    RX = 0x03,
    RY = 0x04,
    RZ = 0x05,
    HWHEEL = 0x06,
    DIAL = 0x07,
    WHEEL = 0x08,
    MISC = 0x09,

    --[[
    0x0a is reserved and should not be used in input drivers.
    It was used by HID as REL_MISC+1 and userspace needs to detect if
    the next REL_* event is correct or is just REL_MISC + n.
    We define here REL_RESERVED so userspace can rely on it and detect
    the situation described above.
    ]]
    RESERVED = 0x0a,
    WHEEL_HI_RES = 0x0b,
    HWHEEL_HI_RES = 0x0c,
    MAX = 0x0f,
    CNT = (0x0f+1),
}

gaming_wheel.AbsoluteAxis = {
    X = 0x00,
    Y = 0x01,
    Z = 0x02,
    RX = 0x03,
    RY = 0x04,
    RZ = 0x05,
    THROTTLE = 0x06,
    RUDDER = 0x07,
    WHEEL = 0x08,
    GAS = 0x09,
    BRAKE = 0x0a,
    HAT0X = 0x10,
    HAT0Y = 0x11,
    HAT1X = 0x12,
    HAT1Y = 0x13,
    HAT2X = 0x14,
    HAT2Y = 0x15,
    HAT3X = 0x16,
    HAT3Y = 0x17,
    PRESSURE = 0x18,
    DISTANCE = 0x19,
    TILT_X = 0x1a,
    TILT_Y = 0x1b,
    TOOL_WIDTH = 0x1c,

    VOLUME = 0x20,

    MISC = 0x28,

    --[[
    0x2e is reserved and should not be used in input drivers.
    It was used by HID as MISC+6 and userspace needs to detect if
    the next * event is correct or is just MISC + n.
    We define here RESERVED so userspace can rely on it and detect
    the situation described above.
    ]]
    RESERVED = 0x2e,

    MT_SLOT = 0x2f,	--  MT slot being modified
    MT_TOUCH_MAJOR = 0x30,	--  Major axis of touching ellipse
    MT_TOUCH_MINOR = 0x31,	--  Minor axis (omit if circular)
    MT_WIDTH_MAJOR = 0x32,	--  Major axis of approaching ellipse
    MT_WIDTH_MINOR = 0x33,	--  Minor axis (omit if circular)
    MT_ORIENTATION = 0x34,	--  Ellipse orientation
    MT_POSITION_X = 0x35,	--  Center X touch position
    MT_POSITION_Y = 0x36,	--  Center Y touch position
    MT_TOOL_TYPE = 0x37,	--  Type of touching device
    MT_BLOB_ID = 0x38,	--  Group a set of packets as a blob
    MT_TRACKING_ID = 0x39,	--  Unique ID of initiated contact
    MT_PRESSURE = 0x3a,	--  Pressure on contact area
    MT_DISTANCE = 0x3b,	--  Contact hover distance
    MT_TOOL_X = 0x3c,	--  Center X tool position
    MT_TOOL_Y = 0x3d,	--  Center Y tool position

    MAX = 0x3f,
    CNT = (0x3f+1)
}

gaming_wheel.DeviceInfo = {
    name = "Virtual Device",
    vendorId = 0,
    productId = 0,
    busType = gaming_wheel.Bus.VIRTUAL,
    version = 0,
    abs = nil,
    rel = nil,
    btn = nil,
    key = nil
}

gaming_wheel.UpdateOutput = {
    abs = nil,
    rel = nil,
    btn = nil,
    key = nil
}

gaming_wheel.InputState = {
    wheel = 0,
    gas = 0,
    brake = 0,
    thumbX = 0,
    thumbY = 0,
    gearR = 0,
    gear1 = 0,
    gear2 = 0,
    gear3 = 0,
    gear4 = 0,
    gear5 = 0,
    gear6 = 0,
    gear7 = 0,
    button = {
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    },
    volumeDown = false,
    volumeUp = false,
    secondaryActive = false,
}

return gaming_wheel