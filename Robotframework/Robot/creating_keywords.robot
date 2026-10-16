*** Settings ***
Library    BuiltIn
Resource    ./resource.robot


*** Variables ***
# scalar(numbers, strings), list, dict

${num1}=        100
${strg}=        python

@{list_var}=    python    java    oops    pytest

&{dict_var}=    name=python    class_no=23    oops=True



*** Test Cases ***
TC1 creating keyword
    Keyword to print the statement

TC2 passing arguments
    keyword to get the argument    ${num1}

TC3 return arguments
    ${returned_value}=    keyword to return the argument
    Log to console    this is printed in the test case section ${returned_value}

TC4 add two numbers
        ${value}=    keyword to get and return keyword    10    20
        Log to console    ${value}
