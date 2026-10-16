*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.google.com
${BROWSER}       Chrome
${SEARCH_TERM}   Robot Framework

*** Test Cases ***
Search Google
    Open Browser    ${URL}    ${BROWSER}
    Input Text      name=q    ${SEARCH_TERM}
    Press Keys      name=q    \\13
    Page Should Contain    ${SEARCH_TERM}
    Close Browser
