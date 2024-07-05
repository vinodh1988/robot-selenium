*** Settings ***
Documentation    RPA Windows Application
Library    RPA.Windows
Library    env/Lib/site-packages/robot/libraries/OperatingSystem.py
*** Variables ***
${CALCULATOR}    calc.exe
${NOTEPAD}    notepad

*** Test Cases ***
Run Applications
    Run Command    ${CALCULATOR}
    Control Window    Calculator
    Run Command    ${NOTEPAD}
    Control Window    reportnow.txt - Notepad


*** Keywords ***
Run Command
    [Arguments]    ${appname}
    Windows Run    ${appname}