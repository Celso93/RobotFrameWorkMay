*** Settings ***
Library    String

*** Variable ***
&{PESSOA}       first_name=Test   last_name=LastName

*** Test Cases ***
Caso de teste de exemplo 01
    Creating User email    ${PESSOA.first_name}    ${PESSOA.last_name}

*** Keywords ***
Creating User email
    [Arguments]     ${FIRST_NAME}      ${LAST_NAME}
    ${WORDS}    Generate Random String
    Set Test Variable    ${EMAIL}    ${FIRST_NAME}${LAST_NAME}${WORDS}@testerobot.com
    [Return]        ${EMAIL} 
