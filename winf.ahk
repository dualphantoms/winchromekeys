; REMAP FUNCTION KEYS

#f::
Input, fK, L1, *
;MsgBox %fK%



if (fK = 1)
{
	Send #{F1}
    return
}
else if (fK = 2)
{
	Send #{F2}
    return
}
else if (fK = 3)
{
	Send #{F3}
    return
}
else if (fK = 4)
{
	Send #{F4}
    return
}
else if (fK = 5)
{  
	Send #{F5}
    return
}
else if (fK = 6)
{
	Send #{F6}
    return
}
else if (fK = 7)
{
	Send #{F7}
    return
}
else if (fK = 8)
{   
	Send #{F8}
    return
}
else if (fK = 9)
{
	Send #{F9}
    return
}
else if (fK = 0)
{
	Send #{F10}
    return
}
else if (fK = `-)
{
	Send #{F11}
    return
}
else if (fK = `=)
{
	Send #{F12}
    return
}
else
{
return
}


; REMAP MEDIA KEYS

F1::Send {Browser_Back}~
F2::Send {Browser_Forward}
F3::Send {Browser_Refresh}
;F4::Send {CapsLock}
F5::Send {PrintScreen}
F6::Send {Home}
F7::Send {End}
F8::Send {Volume_Mute}
F9::Send {Volume_Down}
F10::Send {Volume_Up}


; ADD IMPORTANT KEYS

^Backspace:: Send {Delete}
^Up:: Send {PgUp}
^Down:: Send {PgDn}
;^Left:: Send {Home}
;^Right:: Send {End}


; ADD Program Shortcuts

;VS CODE
#v:: 
TrayTip, , Launching Visual Studio Code,,16
Run "C:\Users\Wilson\AppData\Local\Programs\Microsoft VS Code\Code.exe"
Sleep 2000   ; Let it display for x seconds.
HideTrayTip()
return

;ORACLE
#o::
TrayTip, , Launching Oracle Developer,,16
Run "C:\Users\Wilson\Documents\School\Semester Three\DBS301\sqldeveloper\sqldeveloper.exe"
Sleep 2000   ; Let it display for x seconds.
HideTrayTip()
return

; Copy this function into your script to use it.
HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}
