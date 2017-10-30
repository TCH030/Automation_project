*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot

*** Variables ***

*** Test Cases ***
Login
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div    5

Login with empty password
    Open Broser to Login Page
    Input Username
    Input captcha
    Submit Credentials
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/div
    Should be Equal    ${Error}    Password required

Login with incorrect password
    Open Broser to Login Page
    Input Username
    input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/span/input    54897
    Input captcha
    Submit Credentials
    ${message}=    confirm action
    Should be equal    ${message}    Unauthorized
    Choose OK On Next Confirmation
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/div[2]
    Should be Equal    ${Error}    Unauthorized

Login with incorrect username
    Open Broser to Login Page
    Input Text    userName    987654321
    Input Password
    input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/span/input    54897
    Input captcha
    Submit Credentials
    ${message}=    confirm action
    Should be equal    ${message}    Unauthorized
    Choose OK On Next Confirmation
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/div[2]
    Should be Equal    ${Error}    Unauthorized
