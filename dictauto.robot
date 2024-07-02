*** Settings ***
Documentation  Login Functionality
Library    RobotLocalFileUtils
Library    FileUtilities
*** Variables ***
${filepath}    e:/robotlogs/infologs.log 
&{process1}    process_id=p101    name=notepad.exe    size=30mb
&{process2}    process_id=p102    name=paint.exe    size=53mb
*** Test Cases ***
Test Dictionary Logs
    Log Dictionary    ${filepath}    ${process1}
    Log Dictionary    ${filepath}    ${process2}
    

