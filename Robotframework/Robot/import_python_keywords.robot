*** Settings ***
Library    BuiltIn
Resource    ./resource.robot
Library    ./rf_function1.py

*** Variables ***
# scalar(numbers, strings), list, dict

${num1}=        100
${strg}=        python

@{list_var}=    python    java    oops    pytest

&{dict_var}=    name=python    class_no=23    oops=True

TC1: Call rf python Library
        ${added_val}=    add_two_numbers    10    20
        Log to console    ${added_val}