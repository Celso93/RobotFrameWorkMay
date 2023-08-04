*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections

*** Keywords ***
Create a new user
    ${random_word}    Generate Random String    length=4    chars=[LETTERS]
    ${random_word}    Convert To Lower Case    ${random_word}
    Set Test Variable    ${EMAIL_TEST}    ${random_word}@email.com

Register the user create on ServerRest
    [Arguments]    ${email}    ${status}

    ${body}    Create Dictionary
    ...        nome=Himura Keshin
    ...        email=${email}
    ...        password=1234
    ...        administrador=true

    Create session on ServeRest Local

    ${response}    POST On Session
    ...    alias=local
    ...    url=/usuarios
    ...    json=${body}
    ...    expected_status=${status}
    
    # IF    ${response.status_code} == 201
    #     Set Test Variable    ${ID_USER}    ${response.json()["_id"]}
    # END

    Run Keyword If    ${response.status_code} == 201    Set Test Variable    ${ID_USER}    ${response.json()["_id"]}

    Set Test Variable    ${RESPONSE}    ${response.json()}


Create session on ServeRest Local
    ${hearders}       Create Dictionary    accept=application/json      Content-type=application/json
    Create Session    alias=local          url=http://localhost:3000    headers=${hearders}

Check if this user was create with success
    Dictionary Should Contain Item    ${RESPONSE}    message    Cadastro realizado com sucesso
    Dictionary Should Contain Key     ${RESPONSE}    _id

Try to post the same user again
    [Arguments]    ${email_repeat}
    Register the user create on ServerRest    ${email_repeat}    400

Check if the error message
    Dictionary Should Contain Item    ${RESPONSE}    message    Este email já está sendo usado

Check if the user information
    ${response_user}    
    ...    GET On Session    
    ...    alias=local    
    ...    url=/usuarios/${ID_USER}    
    ...    expected_status=200

    Set Test Variable    ${USER_INFOR}    ${response_user.json()}

Check the user data
    Log    ${USER_INFOR}
    Dictionary Should Contain Item    ${USER_INFOR}    nome            Himura Keshin
    Dictionary Should Contain Item    ${USER_INFOR}    email           ${EMAIL_TEST}
    Dictionary Should Contain Item    ${USER_INFOR}    password        1234
    Dictionary Should Contain Item    ${USER_INFOR}    administrador   true
    Dictionary Should Contain Item    ${USER_INFOR}    _id             ${ID_USER}

Login with this new user
    [Arguments]    ${new_user}
    
    ${body}        Create Dictionary    email=${new_user}    password=1234
    ${response}    POST On Session      alias=local          url=/login      json=${body}

    Set Test Variable    ${LOGIN_INFO}    ${response}

Check if this ocurred with success
    Should Be Equal As Integers       ${LOGIN_INFO.status_code}    200
    Dictionary Should Contain Item    ${LOGIN_INFO.json()}         message        Login realizado com sucesso
    Dictionary Should Contain Key     ${LOGIN_INFO.json()}         authorization

    Log    ${LOGIN_INFO.status_code}
    Log    ${LOGIN_INFO.json()}