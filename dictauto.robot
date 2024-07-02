*** Settings ***
Documentation  Login Functionality
Library    RobotLocalFileUtils
Library    FileUtilities
*** Variables ***
${filepath}    e:/robotlogs/infologs.log 
&{process1}    process_id=p101    name=notepad.exe    size=30mb
&{process2}    process_id=p102    name=paint.exe    size=53mb
&{process3}    process_id=p103    name=robot.exe    size=153mb
@{dlist}    &{process1}    &{process2}    &{process3} 
*** Test Cases ***
Test Dictionary Logs
    FOR    ${x_dict}    IN    @{dlist}
        Log Dictionary    ${filepath}    ${x_dict}
    END
    #Log Dictionary    ${filepath}    ${process1}
    #Log Dictionary    ${filepath}    ${process2}
    

