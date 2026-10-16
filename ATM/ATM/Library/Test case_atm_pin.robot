*** Settings ***
Library    SSHLibrary
Variables  ATM/config_file.py
Variables  var/config_file.py

*** Variables ***
${HOST}        192.168.0.2
${USERNAME}    PNB
${PASSWORD}    12345

*** Test Cases ***
Withdraw Money From ATM
    [Documentation]    Test SSH login and verify correct PIN output.
    Open Connection    ${HOST}
    Login              ${USERNAME}    ${PASSWORD}
    ${output}=         Execute Command    correct_pin
    Should Contain     ${output}    correct_pin
    Log To Console     Test Passed
