*** Settings ***
Library    RPA.Windows
Library    env/lib/site-packages/RPA/Smartsheet.py


*** Variables ***
${dxdiag}    dxdiag
*** Test Cases ***
Open Dxdiag and Set Focus
    Windows Run    ${dxdiag}
    Control Window    DirectX Diagnostic Tool
Check All the tabs 
    Click    id:5000
    Control Window    DirectX Diagnostic Tool
    Sleep    5
    Click    id:5000
    Control Window    DirectX Diagnostic Tool
    Click    id:5000
    Control Window    DirectX Diagnostic Tool
    Click    id:5000
    Control Window    DirectX Diagnostic Tool
Click Save Information and Create File
     Click    id:5001 
     Control Window    Save As 
     Send Keys    id:1001    E:    send_enter=${True}
     Send Keys    id:1001   keys={Ctrl}{a}
     Send Keys    id:1001    keys={BACK}
     Send Keys    id:1001    keys=reportdoc   send_enter=${True} 
     Control Window    DirectX Diagnostic Tool
     Close Current Window