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
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/div    5
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[2]/div/div/div
    Should be Equal    ${Error}    Password required

Login with incorrect password
    Open Broser to Login Page
    Input Username
    Input Text    password    54897
    Input captcha
    Submit Credentials
    ${message}=    confirm action
    Should be equal    ${message}    Unauthorized
    Choose OK On Next Confirmation
    wait until element is visible    xpath=html/body/div[1]/div/div/div/div/div[2]/div[2]    5
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/div[2]
    Should be Equal    ${Error}    Unauthorized

Login with incorrect username
    Open Broser to Login Page
    Input Text    userName    987654321
    Input Password
    Input captcha
    Submit Credentials
    ${message}=    confirm action
    Should be equal    ${message}    Unauthorized
    Choose OK On Next Confirmation
    wait until element is visible    xpath=html/body/div[1]/div/div/div/div/div[2]/div[2]    5
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/div[2]
    Should be Equal    ${Error}    Unauthorized

Login without captcha
    Open Broser to Login Page
    Input Username
    Input Password
    Submit Credentials
	wait until element is visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/div    5
    ${Error}    get text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/div
    Should be Equal    ${Error}    Validation Captcha Required, Captcha Wrong
