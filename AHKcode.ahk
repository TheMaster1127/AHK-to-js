




;text := "hello man is some text lets see if you can type fast then you can see how fast can you typed and ist done"
text := "hello man"

howMany := 0
Loop, Parse, text
{
howMany++

w := w + 14 + 3
}
w := w + 10
w2 := w - 10
x := 10
y := 10
Gui, Font, s18
Loop, Parse, text
{

v := "l" . A_Index
Gui, Add, Text, x%x% y%y% w%w2% h300 v%v%, %A_LoopField%

x := x + 14 + 3

}

Gui, Show, h600 w%w%
pos := 0
OldA_LastKey := ""
;text := "he:lo man is some text lets s]e if you can type fast then you can s]e how fast can you typed and ist done"
text := "he:lo man"


varWrong := 0
varRight := 0


onceTimerStart := 0
SetTimer, codes, 10
SetTimer, lastkey, 10
return

codes:

if (OldA_LastKey != A_LastKey)
{
onceTimerStart++
if (onceTimerStart = 1)
{
StartTime := A_TickCount
}
pos++


; Get the character at the specified position
char := SubStr(text, pos, 1)
Loop, 1
{
if (char = ":")
{
char := "l"
OldA_LastKey := ":"
break
}
else
{
OldA_LastKey := A_LastKey
break
}

if (char = "]")
{
char := "e"
OldA_LastKey := "]"
break
}
else
{
OldA_LastKey := A_LastKey
break
}
}

v := "l" . pos
if (char = A_LastKey)
{
varRight++
GuiControl, Font, %v%, c00ff08
}
else
{
varWrong++
GuiControl, Font, %v%, cff1e00
}
OutputDebug, Character at position %pos% : %char%

if (pos = howMany)
{
ElapsedTime := A_TickCount - StartTime


ms := ElapsedTime

; Calculate the components
hours := Floor(ms / 3600000)
ms := Mod(ms, 3600000)
minutes := Floor(ms / 60000)
ms := Mod(ms, 60000)
seconds := Floor(ms / 1000)
milliseconds := Mod(ms, 1000)

; Display the result
ElapsedTime123 := ""
ElapsedTime123 .= hours . "h " . minutes . "m " . seconds . "s " . milliseconds . "ms"


percentage := Round((varRight / (varWrong + varRight)) * 100)

msgCorrct := "You are ". percentage . "%" .  " correct"




MsgBox, done in %ElapsedTime123% and %msgCorrct%
Sleep, 10
SetTimer, codes, Off
}

}

Return


!L::
ExitApp
Return

lastkey:
Input, A_LastKey, L1 V
Return