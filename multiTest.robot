*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Library    RobotLocalFileUtils

*** Variables ***
${BROWSER}    chrome
${url1}    https://google.co.in 
${url2}    https://bing.com
${input}    Prompt engineering
*** Test Cases ***
Testing google
    Open Site    ${url1}
    Fill Text And Press Enter    ${input}
    Sleep    3
    Close Browser
Testing bing
    Open Site    ${url2}
    Fill Text And Press Enter    ${input}
    Sleep    3
    Close Browser

*** Keywords ***
Open Site
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Write Text To Log File    e:/robotlogs/activity.log    "url: " ${url}
Fill Text And Press Enter
    [Arguments]    ${text}
    Input Text    name=q    ${text}
    Press Keys    name=q    RETURN
    Write Text To Log File    e:/robotlogs/activity.log    "successful input of " ${text}