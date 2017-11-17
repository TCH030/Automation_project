*** Settings ***
Test Teardown     Close All Browsers
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Check CDN Domain
    Open Broser and Login automatically
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    2
    ${CDN_DOMAIN}    Get Value    Xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div/div[2]/div/input
    #Should Be Equal    ${CDN_DOMAIN}    wcs.star0ad.com/jkjk

Create Game with Empty Game ID
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div    5
	${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create Game with dup Game ID
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
    Input text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    BL_M4_V2_RECORDER;V:1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${error_message}    Confirm Action
    Should be Equal    ${error_message}    Create game error: Conflict

Create New Game
    ${RandonNumber}=    Generate Random String    3    [NUMBERS]
    ${Randon_create_Game}=    set variable    qatesting${RandonNumber}
    Log    ${Randon_create_Game}
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    ${Randon_create_Game}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    1
    Page should contain    ${Randon_create_Game}
    #Delete USER via API Request
    Create Session    BO    http://${APIserverIP}:8086
    ${resp}=    Delete    BO    /api/games/${Randon_create_Game}
    Should Be Equal As Strings    ${resp.status_code}    200

Click Cancel Button
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Game Management
