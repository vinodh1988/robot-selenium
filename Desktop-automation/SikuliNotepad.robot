*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary

*** Variables ***
${IMAGE_DIR}      e:/notepadimages

*** Test Cases ***
Windows Notpad Hellow World
    Open Windows Start Menu
    Open Notepad
    Input In Notepad


*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}

Open Windows Start Menu
    Click    winstart.png

Open Notepad
    Input Text    search.png    notepad
    Click    notepadexe.png
    Double Click    title.png

Input In Notepad
    Input Text    workspace.png    Hey Hello!



