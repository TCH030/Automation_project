*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables
Resource          ../Resource.robot

*** Variables ***

*** Test Cases ***
Check Create User Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Click Create New Button
    ${Get_text_Partner}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[1]/label
    ${Get_text_User Name}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[1]/label
    ${Get_text_Status}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[1]/label
    ${Get_text_Password}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[1]/label
    ${Get_text_ConfirmPassword}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[1]/label
    ${Get_text_E-mail}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[1]/label
    Should be Equal    ${Get_text_Partner}    Partner
    Should be Equal    ${Get_text_User Name}    User Name
    Should be Equal    ${Get_text_Status}    Status
    Should be Equal    ${Get_text_Password}    Password
    Should be Equal    ${Get_text_ConfirmPassword}    Confirm Password
    Should be Equal    ${Get_text_E-mail}    E-mail

Create User Management with Empty User Name
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    aa@aa.om
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create User with Empty Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    5
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    AutoTest
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    aa@aa.om
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create User with Empty Confirm Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    AutoTestuser
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    aa@aa.om
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create New USER
    ${RandonNumber}=    Generate Random String    3    [NUMBERS]
    ${Randon_create_account}=    set variable    qatesting${RandonNumber}
    log    ${Randon_create_account}
	${RandonPwd}=    Generate Random String    6    [NUMBERS]
    log    ${RandonPwd}
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Click Create New Button
	
    Sleep    2
	Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div/div/div
	Sleep    1
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[15]
	Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    ${Randon_create_account}
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    ${RandonPwd}
	Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    ${RandonPwd}
    Sleep    1
	Select checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[2]/label/span/input
	Select checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[3]/label/span/input
	Select checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[4]/label/span/input
    Click Create Button
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
	Close Browser
	Sleep    2
	Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${Randon_create_account}
    Input Text    password    ${RandonPwd}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a
    Sleep    1
    Element Should Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[1]/div/a
    Close Browser
    #Delete USER via API Request
    Create Session    BO    http://172.16.50.52:8082
    ${resp}=    Delete    BO    /api/accounts/${Randon_create_account}
    Should Be Equal As Strings    ${resp.status_code}    200
	
Query User's info
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]
    Sleep    1
    ${User_ID}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]
    ${User_creater}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[4]
    Should Be Equal    ${User_ID}    autotestuser
    #Should Be Equal    ${User_creater}    kenny

Edit User's info Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    #Checking User's info is show
    ${user_Partner}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div/div/div
    ${User Name}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    ${User_Status}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div/div/div
    ${user_Password}    Get value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input
    ${Change_Password}    Get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    ${User_E-mail}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    Should be Equal    ${user_Partner}    BBIN Staging
    Should be Equal    ${User_Name}    autotestuser
    Should be Equal    ${User_Status}    Active
    Should be empty    ${user_Password}
    Should be Equal    ${Change_Password}    Change Password
    Should be Equal    ${User_E-mail}    aa@aa.com
    #System Management Check box selected status
	${grouptitle_SystemManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[1]/td[1]/span
    should be equal    ${grouptitle_SystemManagement}    System Management
	${permission_title_UserManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[1]/span
	should be equal    ${permission_title_UserManagement}    User Management
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[2]/label/span/input
	Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[2]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[3]/label/span/input
	Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[3]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[4]/label/span/input
	Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[4]/label/span/input
	${permission_title_PartnerManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[1]/span
	should be equal    ${permission_title_PartnerManagement}    Partner Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[4]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[4]/label/span/input
    ${permission_title_GameManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[1]/span
	should be equal    ${permission_title_GameManagement}    Game Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[3]/label/span/input
    ELement Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[4]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[4]/label/span/input
	${permission_title_CurrencyManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[1]/span
	should be equal    ${permission_title_CurrencyManagement}    Currency Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Element Should Be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[4]/label/span/input
    Element Should Be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[4]/label/span/input
	${permission_title_ConfirmationHistory}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[1]/span
	should be equal    ${permission_title_ConfirmationHistory}    Currency Management
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[2]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[2]/label/span/input    
 	Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[3]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[3]/label/span/input	
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[4]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[4]/label/span/input
    #Partner Management Check box selected status
	${grouptitle_PartnerManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[7]/td[1]/span
    should be equal    ${grouptitle_PartnerManagement}    Partner Management
	${permission_title_GameManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[1]/span
	should be equal    ${permission_title_GameManagement}    Game Management	
	Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[2]/label/span/input
	Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[2]/label/span/input
	Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[3]/label/span/input
	Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[3]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[4]/label/span/input
	Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[4]/label/span/input
	${permission_title_PartnerManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[1]/span
	should be equal    ${permission_title_PartnerManagement}    Player Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[4]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[4]/label/span/input
    #Report Check box selected status
	${grouptitle_Report}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[10]/td[1]/span
    should be equal    ${grouptitle_Report}    Report
	${permission_title_GameIncome}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[1]/span
	should be equal    ${permission_title_GameIncome}    Game Income
	Checkbox should not be selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[2]/label/span/input
	Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[2]/label/span/input
	Checkbox should not be selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[3]/label/span/input
	Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[3]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[4]/label/span/input
	Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[4]/label/span/input
	${permission_title_Game ComparisonAcrossPartner}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[1]/span
	should be equal    ${permission_title_GameComparisonAcrossPartner}    Game Comparison Across Partner
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[2]/label/span/input
    Element should be enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[2]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[3]/label/span/input
    Element should be enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[4]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[4]/label/span/input
    ${permission_title_TOP100}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[1]/span
	should be equal    ${permission_title_Top100}    TOP 100 Players Across Platform
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[2]/label/span/input
    Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[2]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[3]/label/span/input
    Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[4]/label/span/input
    Element Should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[4]/label/span/input
	${permission_title_Player Transaction History}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[1]/span
	should be equal    ${permission_title_PlayerTransactionHistory}    Player Transaction History
    Checkbox Should not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[2]/label/span/input
    Element Should Be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[2]/label/span/input
    Checkbox Should not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[3]/label/span/input
    Element Should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[4]/label/span/input
    Element Should Be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[4]/label/span/input
	
Cancel Change Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    Sleep    1
    Choose Cancel On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    2
    Element should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input

Process Change Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action    #click ok at this time
    Sleep    1
    Element should be Enabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input
    Element Should Be Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input
    Close Browser
    Rest Password

Login after Change Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    1
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    654321
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    654321
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Close Browser
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    autotestuser
    Input Text    password    654321
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Close Browser
    Rest Password

Edit Email
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    ${User_E-mail_before}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    Clear Element text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    sleep    0.5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    bb@bb.com
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    ${User_E-mail_after}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    Should be Equal    ${User_E-mail_after}    bb@bb.com
    Clear Element text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    sleep    0.5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    ${User_E-mail_before}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Choose OK On Next Confirmation
    Confirm Action

Query all Active User
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[3]/div/div[2]/div/div/div/div
    Wait Until Element is Visible    Xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    ${Status}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[3]/div/div[2]/div/div/div/div
    Should be Equal    ${Status}    Active
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Page Should not Contain    Inactive

Query all InActive User
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[3]/div/div[2]/div/div/div/div
    Wait Until Element is Visible    Xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    Sleep    1
    ${Status}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[3]/div/div[2]/div/div/div/div
    Should be Equal    ${Status}    Inactive
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Page Should not Contain    Active

Check User Management View Function
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Search button
    #Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click View Link
    #Checking User's info is show
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    ${user_Partner}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div/div/div
    ${User Name}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    ${User_Status}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div/div/div
    ${user_Password}    Get value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input
    ${User_E-mail}    Get Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input
    Should be Equal    ${user_Partner}    BBIN Staging
    Should be Equal    ${User_Name}    autotestuser
    Should be Equal    ${User_Status}    Active
    Should be empty    ${user_Password}
    Should be Equal    ${User_E-mail}    aa@aa.com
    #System Management Check box selected status
	${grouptitle_SystemManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[1]/td[1]/span
    should be equal    ${grouptitle_SystemManagement}    System Management
	${permission_title_UserManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[1]/span
	should be equal    ${permission_title_UserManagement}    User Management
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[2]/label/span/input
	Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[2]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[3]/label/span/input
	Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[3]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[4]/label/span/input
	Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[2]/td[4]/label/span/input
	${permission_title_PartnerManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[1]/span
	should be equal    ${permission_title_PartnerManagement}    Partner Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[3]/td[4]/label/span/input
    ${permission_title_GameManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[1]/span
	should be equal    ${permission_title_GameManagement}    Game Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[3]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[4]/td[4]/label/span/input
	${permission_title_CurrencyManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[1]/span
	should be equal    ${permission_title_CurrencyManagement}    Currency Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[4]/label/span/input
	${permission_title_ConfirmationHistory}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[5]/td[1]/span
	should be equal    ${permission_title_ConfirmationHistory}    Currency Management
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[2]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[2]/label/span/input    
	Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[3]/label/span/input
	Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[3]/label/span/input	
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[6]/td[4]/label/span/input
    #Partner Management Check box selected status
	${grouptitle_PartnerManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[7]/td[1]/span
    should be equal    ${grouptitle_PartnerManagement}    Partner Management
	${permission_title_GameManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[1]/span
	should be equal    ${permission_title_GameManagement}    Game Management	
	Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[2]/label/span/input
	Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[2]/label/span/input
	Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[3]/label/span/input
	Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[3]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[4]/label/span/input
	Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[8]/td[4]/label/span/input
	${permission_title_PartnerManagement}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[1]/span
	should be equal    ${permission_title_PartnerManagement}    Player Management
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[4]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[9]/td[4]/label/span/input
    #Report Check box selected status
	${grouptitle_Report}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[10]/td[1]/span
    should be equal    ${grouptitle_Report}    Report
	${permission_title_GameIncome}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[1]/span
	should be equal    ${permission_title_GameIncome}    Game Income
	Checkbox should not be selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[2]/label/span/input
	Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[2]/label/span/input
	Checkbox should not be selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[3]/label/span/input
	Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[3]/label/span/input
	Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[4]/label/span/input
	Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[11]/td[4]/label/span/input
	${permission_title_Game ComparisonAcrossPartner}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[1]/span
	should be equal    ${permission_title_GameComparisonAcrossPartner}    Game Comparison Across Partner
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[2]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[2]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[3]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[12]/td[4]/label/span/input
    ${permission_title_TOP100}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[1]/span
	should be equal    ${permission_title_Top100}    TOP 100 Players Across Platform
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[2]/label/span/input
    Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[2]/label/span/input
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[3]/label/span/input
    Element should be disabled   xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[13]/td[4]/label/span/input
	${permission_title_Player Transaction History}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[1]/span
	should be equal    ${permission_title_PlayerTransactionHistory}    Player Transaction History
    Checkbox Should not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[2]/label/span/input
    Element Should Be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[2]/label/span/input
    Checkbox Should not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[3]/label/span/input
    Element Should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[3]/label/span/input
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[4]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/table/tbody/tr[14]/td[4]/label/span/input

Click Cancel Button
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]
    Sleep    0.5
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    User Management
