*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Test Cases ***
Testing Selenium Driver
    Open Browser	https://github.com/vinodh1988/robot-selenium	Chrome	
    Click Button    id=:R55ab:
    #Wait Until Element Is Visible     xpath= //*[@id=":rd:--label"]
    #Click Element   xpath= //*[@id=":rd:--label"]
    Sleep    10




