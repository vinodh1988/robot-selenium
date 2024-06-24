*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Test Cases ***
Testing Selenium Driver
    Open Browser	https://apple.com	Chrome	
    Click Link    xpath=//*[@id="globalnav-list"]/li[2]/div/div/div[2]/ul/li[1]/a
    Sleep    5



