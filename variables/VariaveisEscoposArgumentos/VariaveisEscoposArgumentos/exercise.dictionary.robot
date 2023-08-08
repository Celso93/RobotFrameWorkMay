*** Settings ***
Documentation   Example of using a dictionary

*** Variable ***
&{DAYS_EACH_MONTHS}
...    janeiro=31
...    fevereiro=28
...    marco=31
...    abril=30
...    maio=m31
...    junho=30
...    julho=31
...    agosto=08
...    setembro=30
...    outubro=31
...    novembro=30
...    dezembro=31

*** Test Cases ***
Example of list
    Show all months as a dictionary

*** Keywords ***
Show all months as a dictionary
    Log    janeiro: ${DAYS_EACH_MONTHS.janeiro}
    Log    fevereiro: ${DAYS_EACH_MONTHS.fevereiro}
    Log    marco: ${DAYS_EACH_MONTHS.marco}
    Log    abril: ${DAYS_EACH_MONTHS.abril}
    Log    maio: ${DAYS_EACH_MONTHS.maio}
    Log    junho: ${DAYS_EACH_MONTHS.junho}
    Log    julho: ${DAYS_EACH_MONTHS.julho}
    Log    agosto: ${DAYS_EACH_MONTHS.agosto}
    Log    setembro: ${DAYS_EACH_MONTHS.setembro}
    Log    outubro: ${DAYS_EACH_MONTHS.outubro}
    Log    novembro: ${DAYS_EACH_MONTHS.novembro}
    Log    dezembro: ${DAYS_EACH_MONTHS.dezembro}
