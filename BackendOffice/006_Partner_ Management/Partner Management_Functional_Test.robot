*** Settings ***
Test Teardown     Close ALL Browsers
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
    Sleep    0.5
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
    Sleep    0.5
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create New partner with dup partner code
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Partner Management in submenu
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    123321
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    123321
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Sleep    1
    ${error_message}    Confirm Action
    Should be Equal    ${error_message}    Create Partner Error

Create New Partner
    ${RandonNumber}=    Generate Random String    10    [LETTERS]
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
    Sleep    1
    Choose OK On Next Confirmation
    Sleep    1
    #Delete USER via API Request
    Create Session    BO    http://${APIserverIP}:8086
    ${resp}=    Delete    BO    /api/partners/${Randon_create_Parnter}
    Should Be Equal As Strings    ${resp.status_code}    200

Create New Partner with partner code over 25 characters
    ${RandonNumber}=    Generate Random String    20    [LETTERS]
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
    Sleep    0.5
    ${Partnercode_error}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div
    should be equal    ${Partnercode_error}    not more than 25 characters

Create New Partner wit partner name over 25 characters
    ${RandonNumber}=    Generate Random String    17    [LETTERS]
    ${Randon_create_Parnter}=    set variable    QAPartner${RandonNumber}
    log    ${Randon_create_Parnter}
    ${RandonPartnerName}=    Generate Random String    26    [LETTERS]
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
    Sleep    0.5
    ${Partnercode_error}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    should be equal    ${Partnercode_error}    not more than 25 characters

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
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    vincenttest
    Sleep    0.5
    Clear Element Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
#	Sleep    2
#   Click element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input
    #Sleep    2
    #Press combination    KEY.CTRL    A
#    Sleep    0.5
#    press key    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    \\08
    input text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    vincenttest
    Sleep    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Sleep    1
    Choose OK On Next Confirmation
    ${error_message}    get text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div
    should be equal    ${error_message}    This field is required, Invalid format
