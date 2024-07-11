*** Settings ***
Documentation     Sikuli Library Demo
Suite Setup        Add Needed Image Path
Suite Teardown     Stop Remote Server
Library           SikuliLibrary
Library    RPA.Windows

*** Variables ***
${IMAGE_DIR}    e:/taskmanagerpics
*** Tasks ***
Task Manager Open
    Open Windows Start Menu
    Open Taskmgr
Click Performance
    Click Performance and Capture screen

*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}

Open Windows Start Menu
    SikuliLibrary.Click    winstart.png
Open Taskmgr 
    Input Text    search.png    Task Manager
    SikuliLibrary.Click    taskmanager.png
Click Performance and Capture screen
    Wait For Image    performance.png    x.png    5
    Highlight    performance.png    5
    SikuliLibrary.Click    performance.png

    #@{imageCoordinates}=	Get Image Coordinates	performance.png
    #Log    ${imageCoordinates}
    #Mouse Move Location    ${imageCoordinates[0]}    ${imageCoordinates[1]}
    #Click Region    ${imageCoordinates}   
    #SikuliLibrary.Click    performance.png
    ${image}=    Capture Screen
    Log    ${image}