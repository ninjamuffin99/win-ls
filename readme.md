# win-ls

small little thing that creates an ls.exe, which you can toss into system32 (or anywhere in PATH or whatev...)
to get a unix style "ls" command, with ansi colors and stuff.

run
`haxe build.hxml` and then pluck out `lx.exe` from the export folder and put it wherever you want!

doesn't work in default cmd.exe, i recommend [Windows Terminal](https://apps.microsoft.com/detail/9N0DX20HK701?hl=en-US&gl=US) or [Tabby](https://tabby.sh/)