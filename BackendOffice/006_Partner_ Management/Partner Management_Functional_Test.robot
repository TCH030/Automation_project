*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Create Partner with Empty Code
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
	Click Partner Management in submenu
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    Test
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create Partner with Empty Parent Name
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
	Click Partner Management in submenu
	Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    testing
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required
Create New Partner
    ${RandonNumber}=    Generate Random String    17   [LETTERS]
    ${Randon_create_Parnter}=    set variable    QAPartner${RandonNumber}
    log    ${Randon_create_Parnter}
	${RandonPartnerName}=    Generate Random String    5    [LETTERS]
    log    ${RandonPartnerName}
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
	Click Partner Management in submenu
    Click Create New Button
	Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    ${Randon_create_Parnter}
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    ${RandonPartnerName}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
	Choose OK On Next Confirmation
    Confirm Action
	#Sleep    1
	#Page should contain    ${RandonPartnerName}
	Sleep    1
    #Delete USER via API Request
    Create Session    BO    http://172.16.50.52:8086
    ${resp}=    Delete    BO    /api/partners/${Randon_create_Parnter}
    Should Be Equal As Strings    ${resp.status_code}    200
    

Click Cancel Button
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
	Click Partner Management in submenu
	Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]
    Sleep    0.5
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Partner Management

	
	
Auto Refill Token UID After Clear
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
	Click Partner Management in submenu
	Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    testing
    ${Empty_Token_UID_Before}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    Clear Element Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input
    ${Empty_Token_UID_After}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    Should be Equal    ${Empty_Token_UID_Before}    ${Empty_Token_UID_After}
