*** Settings ***
Documentation    Drag    and Drop Scenario
Library    RPA.Windows
Library    RPA.Desktop
*** Test Cases ***
Open MSPAINT
    Windows Run    mspaint
    Control Window    Untitled - Paint
Click the Control and Select Rectangle
    Double Click    id:CollapsedButton
    Set Wait Time    0.5
    #RPA.Windows.Click    name:Rectangle
Move the mouse pointer and Drag and Drop
    Move Mouse    offset:0,100
    RPA.Desktop.Drag And Drop    offset:0,0    offset:200,200
    
