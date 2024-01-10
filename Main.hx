import sys.FileSystem;

function main()
{
    
    var dirs:Array<String> =  FileSystem.readDirectory(".");
    dirs = dirs.map(function(dir:String):String
    {   
        if (FileSystem.isDirectory("./" + dir))
            return ANSI.BRIGHT_CYAN + dir + "/";
        else
            return ANSI.BRIGHT_GREEN + dir;
    });
    Sys.stdout().writeString(dirs.join("\t\t"));
    Sys.stdout().writeString(ANSI.DEFAULT);
}

class ANSI
{
    public static var ESC:String = "\033[";
    public static var RESET:String = ESC + "0m";
    public static var BOLD:String = ESC + "1m";
    public static var UNDERLINE:String = ESC + "4m";
    public static var BLINK:String = ESC + "5m";
    public static var INVERSE:String = ESC + "7m";
    public static var STRIKETHROUGH:String = ESC + "9m";
    public static var BLACK:String = ESC + "30m";
    public static var RED:String = ESC + "31m";
    public static var GREEN:String = ESC + "32m";
    public static var YELLOW:String = ESC + "33m";
    public static var BLUE:String = ESC + "34m";
    public static var MAGENTA:String = ESC + "35m";
    public static var CYAN:String = ESC + "36m";
    public static var WHITE:String = ESC + "37m";
    public static var BG_BLACK:String = ESC + "40m";
    public static var BG_RED:String = ESC + "41m";
    public static var BG_GREEN:String = ESC + "42m";
    public static var BG_YELLOW:String = ESC + "43m";
    public static var BG_BLUE:String = ESC + "44m";
    public static var BG_MAGENTA:String = ESC + "45m";
    public static var BG_CYAN:String = ESC + "46m";
    public static var BG_WHITE:String = ESC + "47m";

    public static var BRIGHT_BLACK:String = ESC + "90m";
    public static var BRIGHT_RED:String = ESC + "91m";
    public static var BRIGHT_GREEN:String = ESC + "92m";
    public static var BRIGHT_YELLOW:String = ESC + "93m";
    public static var BRIGHT_BLUE:String = ESC + "94m";
    public static var BRIGHT_MAGENTA:String = ESC + "95m";
    public static var BRIGHT_CYAN:String = ESC + "96m";
    public static var BRIGHT_WHITE:String = ESC + "97m";
    public static var BG_BRIGHT_BLACK:String = ESC + "100m";
    public static var BG_BRIGHT_RED:String = ESC + "101m";
    public static var BG_BRIGHT_GREEN:String = ESC + "102m";
    public static var BG_BRIGHT_YELLOW:String = ESC + "103m";
    public static var BG_BRIGHT_BLUE:String = ESC + "104m";
    public static var BG_BRIGHT_MAGENTA:String = ESC + "105m";
    public static var BG_BRIGHT_CYAN:String = ESC + "106m";
    public static var BG_BRIGHT_WHITE:String = ESC + "107m";

    public static var DEFAULT:String = ESC + "39m";
}