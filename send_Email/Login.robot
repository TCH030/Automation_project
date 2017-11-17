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
Open Broser to Login Jekins Page
    Open Browser    ${SERVER_jenkins}    ${BROWSER}    0
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username jenkins
    Input Text    j_username    ${USERNAME_jenkins}

Input Password jenkins
    Input Text    j_password    ${PASSWORD_jenkins}

Submit Credentials jenkins
    Sleep    2
    Click Element    Submit

Open Jenkins
    Open Broser to Login Jekins Page
    Input Username jenkins
    Input Password jenkins
    Submit Credentials jenkins
	Sleep    2

Open Broser to Login gmail Page
    Open Browser    ${SERVER_gmail}    ${BROWSER}    0
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username gmail
    Input Text    id=identifierId    ${USERNAME_gmail}
	Click element    id=identifierNext

Input Password gmail
    Sleep    2
    Input Text    xpath=html/body/div[1]/div[1]/div[2]/div[2]/form/div[2]/div/div[3]/div[1]/div[1]/div/div[1]/div/div[1]/input   ${PASSWORD_gmail}    #*
	#html/body/div[1]/div[1]/div[2]/div[2]/form/div[2]/div/div[3]/div[1]/div[1]/div/div[1]/div/div[1]/input


Submit Credentials gmail
    Sleep    2
    click element    id=passwordNext
	
Open gmail
    Open Broser to Login gmail Page
    Input Username gmail
    Input Password gmail
    Submit Credentials gmail
	Sleep    2   
    

