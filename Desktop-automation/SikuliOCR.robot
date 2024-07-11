*** Settings ***
Documentation     Sikuli Library Demo
Library           SikuliLibrary
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server

*** Variables ***
${IMAGE_DIR}      e:/handwriting

*** Test Cases ***
Test it now
    Open Windows Start Menu
    Click    handw.png
    Wait For Image    handwriting.png   x.png    10
    Set Ocr Language     eng 
    Set Ocr Text Read    true
    ${ocr}=   Get Text    handwriting.png
    Log    ${ocr}
*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}

Open Windows Start Menu
    Click    winstart.png

