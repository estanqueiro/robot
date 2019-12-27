*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../elements.robot

*** Variables ***
${DEFAULT_URL}          http://ninjaplus-web:5000/login
${BROWSER}              headlesschrome

*** Keywords ***
Abrir navegador
    Open Browser    ${DEFAULT_URL}     ${BROWSER}
    Set Selenium Implicit Wait  10
    Maximize Browser Window

Informando credenciais de acesso
    [Arguments]     ${email}            ${pass}
    Input Text      ${INPUT_EMAIL}      ${email}
    Input Text      ${INPUT_PASS}       ${pass}
    Click Button    ${BUTTON_SUBMIT}

Fechar navegador
    Capture Page Screenshot
    Close Browser