*** Settings ***

Documentation    Running Executables
Library    Process

*** Variables ***
${cmdautomation}    e:/autoitscripts/cmdscript.exe
${notepadautomation}    e:/autoitscripts/note1.exe 
*** Test Cases ***
Run Automated Tasks
    Run Executables    ${cmdautomation}
    Run Executables    ${notepadautomation}

*** Keywords ***
Run Executables
    [Arguments]    ${processname}
    Start Process    ${processname}