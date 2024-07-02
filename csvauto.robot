*** Settings ***
Documentation  Login Functionality
Library    RobotLocalFileUtils
Library    FileUtilities
Library    env/Lib/site-packages/robot/libraries/String.py
*** Variables ***
${logpath}    e:/robotlogs/csvlogs.log 
${csvpath}    e:/proc.csv 
*** Test Cases ***
Data Driven CSV Test
    @{proclist}    Read Csv To Array Of Dictionary    ${csvpath}
    FOR    ${proc}    IN    @{proclist}
        Log Dictionary    ${logpath}    ${proc}
        Write Text To Log File    ${logpath}    ------------------------------------------
    END