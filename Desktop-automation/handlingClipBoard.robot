*** Settings ***
Library    RPA.Windows
Library    RPA.Desktop

*** Test Cases ***
Open Notepad
    Windows Run    e:\\robotlogs\\csvlogs.log
    Control Window    csvlogs.log - Notepad
Select all and Copy Text
    Send Keys    name:"Text editor"    keys={Ctrl}{a}
    Send Keys    name:"Text editor"    keys={Ctrl}{c}
Read The Clipboard
    ${var}=    Get Clipboard Value
    Log    ${var}
Close Window
    Close Current Window