*** Settings ***
Library    RPA.Windows

*** Variables ***
${CALCULATOR}    calc.exe

*** Tasks ***
Open Calculator
    Windows Run   ${CALCULATOR}   
    Control Window    Calculator
Perform Calculation
    Click    name:One
    Click    name:Plus
    Click    name:Two
    Click    name:Equals
Check Result
   ${result}    Get Attribute    id:CalculatorResults    Name
    Log    ${result}
    Close Current Window