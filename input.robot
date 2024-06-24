*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Test Cases ***
Testing Selenium Driver
    Open Browser	https://google.co.in	Chrome	
    Input Text    name=q    prompt engineering
    Press Keys    name=q    RETURN
    