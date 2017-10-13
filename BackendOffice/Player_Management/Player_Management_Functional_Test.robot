*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Check Create Player Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    Page Should Contain    Player Id
    Page Should Contain    Partner
    Page Should Contain    Partner
    Page Should Contain    Status
    Page Should Contain    Currency
    Page Should Contain    Wallet Type
    Page Should Contain    Adjust Balance
    Page Should Contain    Balance
    Page Should Contain    Affiliate Code

Create Player with Empty Player ID
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div/div/div
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Check Player Type Option is Showed
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    ${Player_type_House}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div/div/div
    Should Be Equal    ${Player_type_House}    House
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div/div/div
    Sleep    1
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Player_type_Regular}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div/div/div
    Should Be Equal    ${Player_type_Regular}    Regular

Check Player Status Option is Showed
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div/div/div
    ${Player_status_Active}    Get Text    xpath=html/body/div[2]/div/div/div/ul/li[1]
    Should Be Equal    ${Player_status_Active}    Active
    ${Player_status_InActive}    Get Text    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Should Be Equal    ${Player_status_InActive}    Inactive

Check Curreny Option is Showed
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/div/div/div
    ${Player_Currency_CNY}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[1]
    ${Player_Currency_VND}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Player_Currency_USD}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    ${Player_Currency_JPY}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[4]
    ${Player_Currency_MYR}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[5]
    ${Player_Currency_THB}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[6]
    ${Player_Currency_BGD}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[7]
    ${Player_Currency_KRW}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[8]
    ${Player_Currency_CAD}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[9]
    ${Player_Currency_RMB}    Get Text    xpath=/html/body/div[2]/div/div/div/ul/li[10]
    Should Be Equal    ${Player_Currency_CNY}    CNY
    Should Be Equal    ${Player_Currency_VND}    VND
    Should Be Equal    ${Player_Currency_USD}    USD
    Should Be Equal    ${Player_Currency_JPY}    JPY
    Should Be Equal    ${Player_Currency_MYR}    MYR
    Should Be Equal    ${Player_Currency_THB}    THB
    Should Be Equal    ${Player_Currency_BGD}    BGD
    Should Be Equal    ${Player_Currency_KRW}    KRW
    Should Be Equal    ${Player_Currency_CAD}    CAD
    Should Be Equal    ${Player_Currency_RMB}    RMB

Check Wallet Type Auto Switch by Partner
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div/div/div
    Sleep    1
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Wallet_TYPE_Transfer}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/div/div/div/div
    Should be Equal    ${Wallet_TYPE_Transfer}    TRANSFER
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div/div/div
    Sleep    1
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[1]
    ${Wallet_TYPE_Seamless}    Get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/div/div/div/div
    Sleep    1
    Should be Equal    ${Wallet_TYPE_Seamless}    Seamless
    Should not be Equal    ${Wallet_TYPE_Seamless}    ${Wallet_TYPE_Transfer}

Query Player's Info
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
    ${Player_ID}    GET TEXT    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]
    ${Player_type}    Get TEXT    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[4]
    ${Player_wallettype}    Get TEXT    Xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[5]
    ${Player_currency}    Get TEXT    Xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[6]
    ${Player_Balance}    Get TEXT    Xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[7]
    ${Player_DateRegistered}    Get Text    Xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[9]
    Should be Equal    ${Player_ID}    QATestingAccount001
    Should be Equal    ${Player_type}    HOUSE
    Should be Equal    ${Player_wallettype}    TRANSFER
    Should be Equal    ${Player_currency}    USD
    #Should not be Equal    ${Player_Balance}    0.00
    Should be Equal    ${Player_DateRegistered}    2017/09/28 PM 12:37:35

EDIT Player's Info
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
    Click Edit Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span
    ${Player_edit_page_title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/span
    Should be equal    ${Player_edit_page_title}    Edit Player
    ${Player_ID}    GET Value    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input
    ${Player_partner}    GET Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div/div/div
    ${Player_type}    Get TEXT    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div/div/div
    ${Player_status}    Get TEXT    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div/div/div
    ${Player_wallettype}    Get TEXT    Xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/div/div/div
    ${Player_currency}    Get TEXT    Xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/div/div/div
    ${Player_Balance}    Get Value    Xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[8]/div/div/div[2]/div/input
    Should be Equal    ${Player_ID}    QATestingAccount001
    Should be Equal    ${Player_partner}    Company
    Should be Equal    ${Player_type}    HOUSE
    Should be Equal    ${Player_status}    Active
    Should be Equal    ${Player_wallettype}    TRANSFER
    Should be Equal    ${Player_currency}    USD
    Should be Equal    ${Player_Balance}    7.09

Edit Player Status
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
    Click Edit Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div/div/div
    Wait until element is visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]    #Click edit button
    Sleep    1
    Confirm Action
    Sleep    3
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
    ${Player_Status}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[10]/div/button
    Should be Equal    ${Player_Status}    Inactive
    Click Element    Xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[10]/div/button
    Sleep    2
    Confirm Action

Adjust Player Balance
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
    Click Edit Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span
    Input text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div[2]/div/input    2.51
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]    #Click edit button
    Sleep    0.5
    Confirm Action
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
    ${Player_Balance}    Get Text    Xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[7]
    Should be Equal    ${Player_Balance}    9.60
    Sleep    1
    Reset Balance

Inactive and Active Player in View Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    QATestingAccount001
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=//*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button/span
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[1]    5
	Click Element    xpath=//*[@id="root"]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[10]/div/button
	sleep    1
	Confirm Action
	Sleep    3
	${Player_status_deactive}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[10]/div/button
	Should BE Equal    ${Player_status_deactive}    Inactive
	Sleep    1
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[10]/div/button
	Sleep    1
	Confirm Action
	Sleep    3
	${Player_status_Reactive}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[10]/div/button
	Should BE Equal    ${Player_status_Reactive}    Active

Click Cancel Button
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Player Management Link
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]
    Sleep    0.5
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Player Management
