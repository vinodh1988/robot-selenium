*** Settings ***
Documentation  Login Functionality
Library    RobotLocalFileUtils
Library    FileUtilities
Library    env/Lib/site-packages/robot/libraries/OperatingSystem.py
*** Variables ***
${fileSizePath}    e:/robot-basics/log.html
${folderpath}    E:/robot-basics 
${logpath}    E:/robotlogs/auto.log 
*** Test Cases ***
File Size Should be Atleast 100
    ${file_size}    Get Size Of File    ${fileSizePath}
    ${file_size_str}    Convert To String    ${file_size}
    Log    size of file is    ${file_size_str}
    Write Text To Log File    ${logpath}    filesize of ${filesizePath} is ${file_size_str}
    Should Be True    ${file_size}>100

