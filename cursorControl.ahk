#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

CCtoggle := True

displayCCOn()

removeToolTip(){
    ToolTip
}

; cursor control toggle on/off
#z::
CCtoggle := !CCtoggle
If (CCtoggle) {
    ToolTip, CC On
    SetTimer, removeToolTip, -1000
}Else{
    ToolTip, CC Off
    SetTimer, removeToolTip, -1000
}
Hotkey, <+w, Toggle
Hotkey, *>+<+w, Toggle
Hotkey, <+s, Toggle
Hotkey, *>+<+s, Toggle
Hotkey, <+d, Toggle
Hotkey, *>+<+d, Toggle
Hotkey, <+a, Toggle
Hotkey, *>+<+a, Toggle
Hotkey, <+q, Toggle
Hotkey, *>+<+q, Toggle
Hotkey, <+e, Toggle
Hotkey, *>+<+e, Toggle
Hotkey, <+c, Toggle
Hotkey, *>+<+c, Toggle
Hotkey, <+x, Toggle
Hotkey, *>+<+x, Toggle
Hotkey, <+r, Toggle
Hotkey, *>+<+r, Toggle
Hotkey, <+f, Toggle
Hotkey, *>+<+f, Toggle
Return

; arrow keys
<+w::
Send {Up}
Return

<+s::
Send {Down}
Return

<+d::
Send {Right}
Return

<+a::
Send {Left}
Return

>+<+w::Up

>+<+s::Down

>+<+d::Right

>+<+a::Left

; home, end
<+q::
Send {Home}
Return

<+e::
Send {End}
Return

>+<+q::Home

>+<+e::End


; delete, insert
<+c::
Send {Delete}
Return

<+x::
Send {Insert}
Return

>+<+c::Delete

>+<+x::Insert


; page up, down
<+r::
Send {PgUp}
Return

<+f::
Send {PgDn}
Return

>+<+r::PgUp

>+<+f::PgDn


displayCCOn(){
    MsgBox, Your CURSOR CONTROL (CC) hotkeys are turned ON`nHere are the hotkeys:`n`tLeftShift+W : Up`n`tLeftShift+S : Down`n`tLeftShift+D : Right`n`tLeftShift+A : Left`n`tLeftShift+Q : Home`n`tLeftShift+E : End`n`tLeftShift+C : Delete`n`tLeftShift+X : Insert`n`tLeftShift+R : PageUp`n`tLeftShift+F : PageDown`n`tWin+z : TOGGLE CURSOR CONTROLS ON/OFF
}