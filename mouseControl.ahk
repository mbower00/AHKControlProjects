#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

MsgBox, Your MOUSE CONTROL (MC) hotkeys are turned ON`nHere are the hotkeys:`n`tUp : MouseUp`n`tDown : MouseDown`n`tLeft : MouseLeft`n`tRight : MouseRight`n`tDel : MouseRightClick`n`tPgDn : MouseLeftClick`n`tHome : MouseScrollUp`n`tEnd : MouseScrollDown`n`tIns : MouseMiddleClick`n`tShift+Up : INCREASE MOVEMENT FACTOR`n`tShift+Down : DECREASE MOVEMENT FACTOR`n`tShift+Right : INCREASE CHANGE OF MOVEMENT FACTOR`n`tShift+Left : DECREASE CHANGE OF MOVEMENT FACTOR`n`tWin+PgUp : TOGGLE MOUSE CONTROLS ON/OFF

MCToggle := True
movementFactor := 5
incFactor := 1

removeToolTip(){
    ToolTip
}

#PgUp::
MCToggle := !MCToggle
If (MCToggle){
    ToolTip, MC Off
    SetTimer, removeToolTip, -1000
}Else{
    ToolTip, MC Off
    SetTimer, removeToolTip, -1000
}
Hotkey, Up, Toggle
Hotkey, Down, Toggle
Hotkey, Left, Toggle
Hotkey, Right, Toggle
Hotkey, +Up, Toggle
Hotkey, +Down, Toggle
Hotkey, +Right, Toggle
Hotkey, +Left, Toggle
Hotkey, Del, Toggle
Hotkey, PgDn, Toggle
Hotkey, Home, Toggle
Hotkey, End, Toggle
Hotkey, Ins, Toggle
Hotkey, Up & Right, Toggle
Hotkey, Up & Left, Toggle
Hotkey, Down & Right, Toggle
Hotkey, Down & Left, Toggle
Hotkey, Right & Up, Toggle
Hotkey, Left & Up, Toggle
Hotkey, Right & Down, Toggle
Hotkey, Left & Down, Toggle
Return

Up::
MouseGetPos, x, y
MouseMove, x, y-movementFactor
Return

Down::
MouseGetPos, x, y
MouseMove, x, y+movementFactor
Return

Left::
MouseGetPos, x, y
MouseMove, x-movementFactor, y
Return

Right::
MouseGetPos, x, y
MouseMove, x+movementFactor, y
Return

Up & Right::
MouseGetPos, x, y
MouseMove, x+movementFactor, y-movementFactor
Return

Up & Left::
MouseGetPos, x, y
MouseMove, x-movementFactor, y-movementFactor
Return

Down & Right::
MouseGetPos, x, y
MouseMove, x+movementFactor, y+movementFactor
Return

Down & Left::
MouseGetPos, x, y
MouseMove, x-movementFactor, y+movementFactor
Return

Right & Up::
MouseGetPos, x, y
MouseMove, x+movementFactor, y-movementFactor
Return

Left & Up::
MouseGetPos, x, y
MouseMove, x-movementFactor, y-movementFactor
Return

Right & Down::
MouseGetPos, x, y
MouseMove, x+movementFactor, y+movementFactor
Return

Left & Down::
MouseGetPos, x, y
MouseMove, x-movementFactor, y+movementFactor
Return

+Up::
movementFactor += incFactor
ToolTip, %movementFactor%
SetTimer, removeToolTip, -1000
Return

+Down::
movementFactor -= incFactor
ToolTip, %movementFactor%
SetTimer, removeToolTip, -1000
Return

+Right::
incFactor++
ToolTip, *%incFactor%
SetTimer, removeToolTip, -1000
Return

+Left::
incFactor--
ToolTip, *%incFactor%
SetTimer, removeToolTip, -1000
Return

Del::
Send {LButton}
Return

PgDn::
Send {RButton}
Return

Home::
Send {WheelUp}
Return

End::
Send {WheelDown}
Return

Ins::
Send {MButton}
Return