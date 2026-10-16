*** Settings ***
Library    BuiltIn

*** Keywords ***
Keyword to print the statement
    Log To Console    this is the message from keyword section

keyword to get the argument
    [Arguments]    ${param1}
    Log To Console    this is getting printed in the keyword section ${param1}

keyword to return the argument
    ${num2}=    Set Variable    200
    Log To Console    this is getting printed in the keyword section ${num2}
    RETURN    ${num2}

keyword to get and return keyword
    [Arguments]    ${param1}    ${param2}
    ${added_val}=    Evaluate    ${param1} + ${param2}
    RETURN    ${added_val}

Keyword For Setup2
    Log    Custom test setup executed    console=True

Keyword For Teardown2
    Log    Custom test teardown executed    console=True

Keyword for Suite Setup
    Log    Custom suite setup executed    console=True

keyword for Suite teardown
    Log    Custom suite setup executed    console=True