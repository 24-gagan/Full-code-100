*** Settings ***
Library    SSHLibrary
Variables  ATM/config_file.py
Variables  var/config_file.py

*** Variables ***
${HOST}          192.168.1.10
${USERNAME}      admin
${PASSWORD}      admin123

*** Test Cases ***
Withdraw Money From The ATM
    [Documentation]    This test logs into ATM SSH and checks output for correct password.
    Open Connection    ${HOST}
    Login              ${USERNAME}    ${PASSWORD}
    ${output}=         Execute Command    correct_password
    Should Contain     ${output}    correct_password
    Log To Console     Test Passed
