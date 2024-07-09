*** Settings ***
Documentation    Task to Automation Run as Administrator
Library    RPA.Windows
*** Test Cases ***
Open Desktop SearchBox
    Send Keys    desktop    {WIN}{d}
    Send Keys    desktop    {WIN}
    Send Keys    id:SearchTextBox    cmd
Open Context Menu and Run the application as Administrator
    Control Window    desktop
    Right Click   id:"PPCommand Prompt"
    Click    id:"RunAs"
    
