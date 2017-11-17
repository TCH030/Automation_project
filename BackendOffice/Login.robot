*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Resource          Resource.robot
Resource          Library.robot

*** Variables ***
#${DELAY}         0
#${SERVER}        http://172.16.50.51:9000    # DevServer

*** Keywords ***
Open Broser to Login Page
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username
    Input Text    userName    ${USERNAME}

Input Password
    Input Text    password    ${PASSWORD}

Input captcha
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    #Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/span/input    ${Get_captcha}
    Sleep    2

Submit Credentials
    Sleep    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button

Open Broser and Login automatically
    Open Broser to Login Page
    Input Username
    Input Password
    Input captcha
    Submit Credentials
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div    5
