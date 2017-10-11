*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Resource          Resource.robot
Resource          Library.robot

*** Variables ***
${DELAY}          0
${SERVER}         http://172.16.50.51:9000    # DevServer

*** Keywords ***
Open Broser to Login Page
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username
    Input Text    userName    kenny

Input Password
    Input Text    password    123456

Input captcha
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}

Submit Credentials
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button

Open Broser and Login automatically
    Open Broser to Login Page
    Input Username
    Input Password
    Input captcha
    Submit Credentials
