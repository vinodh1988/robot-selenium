; Open Notepad
Run("notepad.exe")

; Wait for the Notepad window to appear
WinWaitActive("[CLASS:Notepad]")

; Type some text
Send("Hello, this is a test of AutoIt scripting!")

; Wait for a few seconds
Sleep(3000)

; Close Notepad (without saving)
WinClose("[CLASS:Notepad]")

; Handle the "Save" dialog
WinWaitActive("Notepad")

Send("!n") ; Send Alt+N to select "Don't Save"