# AutoHotKey Control Projects
Here are some projects which add some functionality for convenient controls. They are written in [AutoHotKey](https://www.autohotkey.com/).
## cursorControl.ahk
This script will let you move your cursor with LeftShift+W,A,S,D! There are other functionalities (including Home and End) of this program, so please see the list below:
- LeftShift+W : Up
- LeftShift+S : Down
- LeftShift+D : Right
- LeftShift+A : Left
- LeftShift+Q : Home
- LeftShift+E : End
- LeftShift+C : Delete
- LeftShift+X : Insert
- LeftShift+R : PageUp
- LeftShift+F : PageDown
- Win+z : TOGGLE CURSOR CONTROLS ON/OFF
## mouseControl.ahk
This script will allow you to control your mouse with the your arrow keys! There are other functionalities (including clicking) of this program, so please see the list below:
- Up : MouseUp
- Down : MouseDown
- Left : MouseLeft
- Right : MouseRight
- Del : MouseRightClick
- PgDn : MouseLeftClick
- Home : MouseScrollUp
- End : MouseScrollDown
- Ins : MouseMiddleClick
- Shift+Up : INCREASE MOVEMENT FACTOR
- Shift+Down : DECREASE MOVEMENT FACTOR
- Shift+Right : INCREASE CHANGE OF MOVEMENT FACTOR
- Shift+Left : DECREASE CHANGE OF MOVEMENT FACTOR
- Win+PgUp : TOGGLE MOUSE CONTROLS ON/OFF
## Help
### How do I run these scripts?
In order to run these you will need to download [AutoHotKey](https://www.autohotkey.com/). Once AHK is ready, double click the scripts to run them.
### How do I disable these HotKeys without closing the program?
In order to toggle these HotKeys without closing the programs, you will use the WINDOWS key + Z (for cursorControl.ahk) or + PgDn (for mouseControl.ahk).
#### cursorControl.ahk
- Win+z : TOGGLE CURSOR CONTROLS ON/OFF
#### mouseControl.ahk
- Win+PgUp : TOGGLE MOUSE CONTROLS ON/OFF
### What does INCREASE/DECREASE CHANGE OF MOVEMENT FACTOR mean in mouseControl.ahk?
Shift+Left and Shift+Right decrease/increase the value by which the Shift+Up and Shift+Down increase/decrease the number by which the mouse is moved by each arrow click. 
<br>
For example, Shift+Up is pressed and code similar to this runs:
```
movementFactor = movementFactor + x
```
In this example, the value of x would increase when you press Shift+Right.