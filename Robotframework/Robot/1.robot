*** Settings ***
Library    BuiltIn

*** Variables ***
${name}    Gagandeep Singh

*** Test Cases ***
TC1
    Log To Console    My name is ${name}