*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot

*** Variables ***

*** Test Cases ***
Check User Management view page via 2nd Line Parnter login
    Login 2nd line parnter
	Click Menu Tree
	Open System Management submenu
	Click User Management in submenu
	Click Element    xpath= html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[2]/div/div[2]/div/div/div/div
    Wait until element is visible   xpath=html/body/div[2]/div/div/div/ul/li[2]    5
	Element Should Not Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[2]/div/div[2]/div/div/div/div    Company
	Current Frame Should Not Contain    Company
	
Check user create via 2nd Line Parnter login
    Login 2nd line parnter
	Click Menu Tree
	Open System Management submenu
	Click user Management in submenu
	Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button
	wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div/div/div/div
	Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div/div/div/div
    Wait until element is visible   xpath=html/body/div[2]/div/div/div/ul/li[2]    5
	Element Should Not Contain    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div/div/div/div    Company
	Current Frame Should Not Contain    Company
	
Chek Parnter Management via 3rd Line Parnter login
    Login 3rd line parnter
	Click Menu Tree
	Open System Management submenu
	Click parnter Management in submenu
    Wait until element is visible   xpath=html/body/div[1]/div/div/section/div/h3/div/button    5
	Current Frame Should Not Contain    BBIN Staging	


	
	
	
	
	
	
	
	
	
	
	
	
	
*** Keyword ***
Login 2nd line parnter
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
	Input Username
    Input Text    userName    autotestuser01
    Input Text    password    123456
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
	Sleep    2
	Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button

Login 3rd line parnter
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
	Input Username
    Input Text    userName    autotestuser03
    Input Text    password    123456
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
	Sleep    2
	Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button