*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${url}    https://google.co.in 
${input}    Prompt engineering
*** Test Cases ***
Testing Selenium Driver
    Open Browser	${url}    ${BROWSER}	
    Input Text    name=q    ${input}
    Press Keys    name=q    RETURN
