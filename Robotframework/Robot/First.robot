*** Settings ***
Library    BuiltIn
Resource    ./resources.robot

Suite Setup       Log    This is the suite setup    console=True    level=TRACE
Suite Teardown    Log    This is the suite teardown    console=True    level=TRACE
Test Setup        Log    This is the setup    console=True    level=TRACE
Test Teardown     Log    This is the teardown    console=True    level=TRACE
Suite Setup       Keyword for Suite Setup
Suite Teardown    keyword for Suite teardown

#*** Variables ***
#${num1}           100
#${strg}           python
#
#@{list_var}       python    java    oops    pytest
#
#&{dict_var}       name=python    class_no=23    oops=True
Variables    ./data_var.py
*** Test Cases ***
TC1 Print the message
    Log    This is the message    console=True    level=TRACE

TC2 Printing Variables
    Log    Scalar number: ${num1}    console=True
    Log    Scalar string: ${strg}    console=True
    Log    List: ${list_var}    console=True
    Log    Dictionary: ${dict_var}    console=True

TC3 Accessing List
    Log    List first element: ${list_var}[0]    console=True

    FOR    ${var}    IN    @{list_var}
        Log    ${var}    console=True
    END

TC4 Accessing Dictionary
    [Setup]    Keyword For Setup2

    Log    Dictionary name: ${dict_var}[name]    console=True

    FOR    ${key}    ${value}    IN    &{dict_var}
        Log    ${key}: ${value}    console=True
    END

    [Teardown]    Keyword For Teardown2


