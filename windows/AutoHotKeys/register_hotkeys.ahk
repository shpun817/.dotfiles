#z::Run https://www.autohotkey.com  ; Win+Z

PrintScreen::+#s ; PrintScreen -> Shift+Win+S

; Workflow keys

!`::	; Alt+` -> Open/Switch to Windows Terminal
if WinExist("ahk_exe WindowsTerminal.exe")
    WinActivate
else
    Run, "C:\Shortcuts\Terminal"
return

!1::	; Alt+1 -> Open/Switch to Chrome
SetTitleMatchMode, RegEx
if WinExist("Google Chrome$")
    WinActivate
else
    Run, "C:\Shortcuts\GoogleChrome"
return

!2::	; Alt+2 -> Open/Switch to Brave
SetTitleMatchMode, RegEx
if WinExist("Brave$")
    WinActivate
else
    Run, "C:\Shortcuts\Brave"
return

!3::	; Alt+3 -> Open/Switch to VS Code
SetTitleMatchMode, RegEx
if WinExist("Visual Studio Code$")
    WinActivate
else
    Run, "C:\Shortcuts\VisualStudioCode"
return

!4::	; Alt+4 -> Open/Switch to Discord
SetTitleMatchMode, RegEx
if WinExist("Discord$")
    WinActivate
else
    Run, "C:\Shortcuts\Discord"
return

; End Workflow keys