#RequireAdmin
#AutoIt3Wrapper_UseX64=N


if $CmdLine[0] > 0 Then
   run($CmdLine[1])
Else
   run(@ScriptDir & '\SUPERAntiSpyware.exe')
EndIf

AutoItSetOption('MouseCoordMode',0)
sleep(300)
WinWait('SUPERAntiSpyware Free Edition Setup')
WinActivate('SUPERAntiSpyware Free Edition Setup')
sleep(1000)
; click "Next" on the Welcome dialog
ControlClick('SUPERAntiSpyware Free Edition Setup', 'It is strongly recommended that you exit', 'Button7')
sleep(1000)
; agree to the EULA
ControlClick('SUPERAntiSpyware Free Edition Setup', 'Your access to and use of this software, including', 'Button7')
sleep(1000)
; click "Next" to install for all users
ControlClick('SUPERAntiSpyware Free Edition Setup', 'The settings for this application can be installed for', 'Button7')
sleep(1000)
; click "Next" to install in the default location
ControlClick('SUPERAntiSpyware Free Edition Setup', 'To Install in a different folder, click the Browse button', 'Button7')
; wait a bit to install the files
sleep(10000)
; uncheck the box to submit system diagnostic information back to the vendor and then click "Next"
ControlCommand('SUPERAntiSpyware Free Edition Setup', 'The following options will be used when SUPERAntiSpyware is run for the first time', 'Button2', 'UnCheck')
ControlClick('SUPERAntiSpyware Free Edition Setup', '', 'Button7')
sleep(1000)
; click "Finished"
ControlClick('SUPERAntiSpyware Free Edition Setup', 'Click the Finished button to exit this installation', 'Button8')
; wait a long time to see if the trial version offer pops up...
sleep(20000)
; decline the offer
ControlClick('SUPERAntiSpyware Professional Trial', 'SUPERAntiSpyware Professional provides additional', 'Button2')
; take another snooze to give the app a chance to download virus info...
sleep(20000)
; the following will cancel the virus info download:
ControlClick('SUPERAntiSpyware Free Edition', '', 'Button8')
; take another snooze to give the app a chance to stop the download...
sleep(20000)
; the following will close the remaining window:
WinClose('SUPERAntiSpyware Free Edition', 'Click here to upgrade')
sleep(1000)

