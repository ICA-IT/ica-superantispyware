#RequireAdmin
#AutoIt3Wrapper_UseX64=N

if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run(@ScriptDir & '\SASUNINST-x64.EXE')
EndIf

AutoItSetOption('MouseCoordMode',0)

WinWait('SUPERAntiSpyware')
WinActivate('SUPERAntiSpyware')
sleep(2000)
; click "Yes" to uninstall
ControlClick('SUPERAntiSpyware', 'This will uninstall SUPERAntiSpyware', 'Button1')
; sbooze a long time to give the program time to nuke files
sleep(10000)
; all done now... click "OK" to reboot
ControlClick('SUPERAntiSpyware', 'SUPERAntiSpyware Uninstall must reboot your computer', 'Button1')
sleep(1000)
