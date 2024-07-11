; Define the directory path
$directoryPath = "C:\Users\vinodh\Documents"

; Open Command Prompt
Run("cmd.exe")

; Wait for the Command Prompt window to appear
WinWaitActive("[CLASS:CASCADIA_HOSTING_WINDOW_CLASS]")

; Change to the specified directory
Send("cd " & $directoryPath & "{ENTER}")

; List all files in the directory
Send("dir{ENTER}")

; Wait for a few seconds to view the output
Sleep(5000)

; Close Command Prompt
Send("exit{ENTER}")
