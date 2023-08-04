*** Settings ***
Resource    ../resources/api_testing_user.resource

*** Variables ***

*** Test Cases ***
Creating a new user with success on ServerRest
    Create a new user
    Register the user create on ServerRest     ${EMAIL_TEST}    201
    Check if this user was create with success

Creating a user that already exist on ServerRest
    Create a new user
    Register the user create on ServerRest    ${EMAIL_TEST}    201
    Try to post the same user again           ${EMAIL_TEST}
    Check if the error message

Consult information of new user
    Create a new user
    Register the user create on ServerRest     ${EMAIL_TEST}    201
    Check if the user information
    Check the user data

Login with a new user
    Create a new user
    Register the user create on ServerRest     ${EMAIL_TEST}    201
    Login with this new user    ${EMAIL_TEST}
    Check if this ocurred with success