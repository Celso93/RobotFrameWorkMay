*** Settings ***
Documentation   Exercise to pratice loops
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
@{LIST}              1     2     3     4     5     6     7     8     9     10     11     12     13     14     15
${NUMBER_5_TXT}      I'm number 5
${NUMBER_10_TXT}     I'm number 10
${ANY_NUMBER_TXT}    I'm not number 5 or number 10

*** Test Case ***
I am the number
    Check number

*** Keywords ***
Check number
    FOR    ${INDEX}    ${ELEMENT}    IN ENUMERATE  @{LIST}
        IF    ${ELEMENT} == 5          
            Log               INDEX: ${INDEX} TEXT: ${NUMBER_5_TXT}
            Log To Console    INDEX: ${INDEX} TEXT: ${NUMBER_5_TXT}
        ELSE IF    ${ELEMENT} == 10
            Log               INDEX: ${INDEX} TEXT: ${NUMBER_10_TXT}
            Log To Console    INDEX: ${INDEX} TEXT: ${NUMBER_10_TXT}
        ELSE
            Log               INDEX: ${INDEX} TEXT: ${ANY_NUMBER_TXT}
            Log To Console    INDEX: ${INDEX} TEXT: ${ANY_NUMBER_TXT}
        END
    END

#FICA A DICA
# Existem outros modos de fazer, veja abaixo:
#   FOR    ${numero}    IN   @{NUMEROS}
#       IF  ${numero} == 5 or ${numero} == 10
#           Log To Console    Eu sou o número ${numero}!
#       ELSE
#           Log To Console    Eu não sou o número 5 e nem o 10!
#       END
#   END

#   Log To Console  ${\n}
#   FOR    ${numero}    IN   @{NUMEROS}
#       IF  ${numero} in (5, 10)
#           Log To Console    Eu sou o número ${numero}!
#       ELSE
#           Log To Console    Eu não sou o número 5 e nem o 10!
#       END              
#   END