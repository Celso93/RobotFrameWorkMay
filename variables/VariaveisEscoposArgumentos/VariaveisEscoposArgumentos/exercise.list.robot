*** Settings ***
Documentation   Example of List

*** Variable ***
@{MONTHS}
...    janeiro
...    fevereiro
...    marco
...    abril
...    maio
...    junho
...    julho
...    agosto
...    setembro
...    outubro
...    novembro
...    dezembro

*** Test Cases ***
Example of list
    Show all months

*** Keywords ***
Show all months
    Log    ${MONTHS[0]}
    Log    ${MONTHS[1]}
    Log    ${MONTHS[2]}
    Log    ${MONTHS[3]}
    Log    ${MONTHS[4]}
    Log    ${MONTHS[5]}
    Log    ${MONTHS[6]}
    Log    ${MONTHS[7]}
    Log    ${MONTHS[8]}
    Log    ${MONTHS[9]}
    Log    ${MONTHS[10]}
    Log    ${MONTHS[11]}
