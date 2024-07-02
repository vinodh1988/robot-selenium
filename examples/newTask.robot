*** Settings ***
Documentation  Login Functionality
Library    RobotLocalFileUtils
Library    FileUtilities
*** Variables ***
${sourcef}    E:/experiment/sourcefiles/datanow.txt
${destf}    E:/experiment/destfiles/datanow.txt
${logpath}    E:/robotlogs/auto.log 
*** Test Cases ***
File Copy Testing
    Move File    ${sourcef}    ${destf}
    Log    File successfully Written
    Write Text To Log File    ${logpath}    ${sourcef} written to ${destf}