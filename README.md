
---

# AHK-to-js

**AHK-to-js** is a transpiler from AutoHotkey (AHK) to JavaScript (JS) that puts it all in a full HTML file. It aims to simulate AHK inside a browser on almost any device.

**Note:**
- This project is specifically for AutoHotKey V1.
- AHK-to-js is still in development. 
- Documentation coming soon. 
- Just one thing: if you want to try it now, after an `IfMsgBox` at the end, add `} ; end of ifmsgbox`

Example:
```ahk
IfMsgBox, Yes
{
	
} ; end of ifmsgbox

```
or
```ahk
IfMsgBox, Yes
{
	
}
else
{
	
} ; end of ifmsgbox
```

## Usage

To use AHK-to-js:

1. Ensure you have AutoHotKey V1 installed. You can download it from [here](https://www.autohotkey.com/download/ahk-install.exe).
2. Add your AHK code in `AHKcode.ahk`.
3. Run `AHK to js.ahk`.
4. You'll get `temp.html` as output.
5. Open for edit `temp.html` coppy the full file do `Ctrl+A` then `Ctrl+C`
6. Open `PrettierFormatter.html`
7. Format the code and then put it it back in `temp.html`
8. Open the `temp.html`

For coding style, you should use Allman style since functions won't be recognized here is an example:

Do this:

```ahk
nameOfFunc(a, b)
{
return a + b
}
```
Not this:

```ahk
nameOfFunc(a, b) {
return a + b
}
```

Also, `return` must be in lowercase.

So far, AHK-to-js supports:

- Functions
- If, else, else if
- Random
- Sleep
- Msgbox 
- InputBox can only pass 2 or 3 parameters here is an example:

```ahk
InputBox, OutputVar, We will only see this title in AutoHotKey, And this will be seen as the only thing in js and this will be the text in ahk

; also you can do it like this
InputBox, OutputVar, And this will be seen as the only thing in js and in ahk this will be the title and the text of the InputBox 
; please don't add more parameters or commas ","
```

- OutputDebug (equivalent to `console.log` in JS)
- Loop
- Loop, Parse
- Increment (e.g., `var++`)
- Simple dynamically function calls. Example: `func%num%()` cant do `%num%func()` also not `func%num%name()` you can only have one `%var%` at the end.
- Assignment operators (`:=`, `.=`, `+=`, `-=`, `*=`)
- Comments (Note: Comments might be translated in some cases)

Some features that haven't been fully tested but should work include:

- Abs
- ACos
- ASin
- ATan
- Ceil
- Cos
- Exp
- Floor
- Ln
- Log
- Round
- Sin
- Sqrt
- Tan
- Chr
- InStr
- RegExMatch
- RegExReplace
- StrLen
- StrSplit
- Format
- Ord
- SubStr
- Trim
- StrReplace
- Mod
- Asc

Built-in Variables

- A_ScreenWidth
- A_ScreenHeight
- A_GuiControl comming soon 👀
- A_TimeIdle
- A_TickCount
- A_NowUTC
- A_Now
- A_YYYY
- A_MM
- A_DD
- A_MMMM
- A_MMM
- A_DDDD
- A_DDD
- A_Hour
- A_Min
- A_Sec
- A_Space
- A_Tab

## Platform Compatibility

- AutoHotKey only runs on Windows.

---
