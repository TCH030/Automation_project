*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Check Game Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/a
	Sleep    1
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Game Management

Check Game Management (Page Partner)
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Click Partner Management submenu
    Click Game Management in submenu (Partner)
    Page Should Contain    Game Management    3

Check Currency Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Wait Until Page Contains    Currency Management
    #    Wait Until Page Contains    VND
    #    Wait Until Page Contains    USD
    #    Wait Until Page Contains    JPY
    #    Wait Until Page Contains    MYR
    #    Wait Until Page Contains    THB
    #    Wait Until Page Contains    BGD
    #    Wait Until Page Contains    KRW
    #    Wait Until Page Contains    Renminbi Chinese Yen
    #    Wait Until Page Contains    Vietnamese Dong
    #    Wait Until Page Contains    USD Dollar
    #    Wait Until Page Contains    Japanese Yen
    #    Wait Until Page Contains    Maldivian Rufiyaa
    #    Wait Until Page Contains    Thai Baht
    #    Wait Until Page Contains    Bulgarian Lev
    #    Wait Until Page Contains    Korean Republic Won

Check Partner Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Open System Management submenu
    Click Partner Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    5
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Partner Management
    Page Should Contain    ${Get_Page_Title}
    #    Page Should Contain    BBIN Staging
    #    Page Should Contain    c304afdf-2f61-6369-c088-924f99e1be1a
    #    Page Should Contain    GPK Staging
    #    Page Should Contain    db7b3a43-89c6-3751-16e6-baa24434b393
    #    Page Should Contain    Game Management
    #    Page Should Contain    GT Staging
    #    Page Should Contain    c22e510f-821b-4aa4-b86e-06bc90fee458

Check User Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    User Management
    Page Should Contain    User Name
    Page Should Contain    Partner
    #Page Should Contain    GPK Staging
    Page Should Contain    Status
    Page Should Contain    Result per page

Check Player Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Click Partner Management submenu
    Click Player Management in submenu
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Player Management
    Page Should Contain    Player ID
    Page Should Contain    Affiliate Code
    Page Should Contain    Partner
    Page Should Contain    Player Type

Check Game Income Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Game Income
    Page Should Contain    Time Zone
    Page Should Contain    Time Range Presets
    Page Should Contain    Start Date
    Page Should Contain    End Date
    Page Should Contain    Partner
    Page Should Contain    View By
    Page Should Contain    Start Time
    Page Should Contain    End Time
    Page Should Contain    Report Currency
    Page Should Contain    Game

Check Player Transaction History Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Click Report submenu
    Click Player Transaction History in submenu
    Page Should Contain    User Id:
    Page Should Contain    Query Type
    Page Should Contain    Games
    Page Should Contain    partnerID
    Page Should Contain    TimeZone
    Page Should Contain    Time Range Presets
    Page Should Contain    Start Date:
    Page Should Contain    Hour:
    Page Should Contain    End Date:
    Page Should Contain    Hour:
    Page Should Contain    Results per Page:
    Page Should Contain    Transaction ID:

Check TOP 100 Players Across Platform page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Click Report submenu
    Click TOP 100 Players Across Platform in submenu
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    TOP 100 Players Across Platform
    Page Should Contain    Time Zone
    Page Should Contain    Time Range Presets
    Page Should Contain    Start Date
    Page Should Contain    End Date
    Page Should Contain    Partner
    Page Should Contain    Start Time
    Page Should Contain    End Time
    Page Should Contain    Report Currency

Check Game Comparison Across Partner Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Game Comparison Across Partner
    Page Should Contain    Time Zone
    Page Should Contain    Time Range Presets
    Page Should Contain    Start Date
    Page Should Contain    End Date
    Page Should Contain    Partner
    Page Should Contain    Start Time
    Page Should Contain    End Time
    Page Should Contain    Report Currency
    Page Should Contain    Game
    Page Should Contain    Select All Games
    Page Should Contain    Select All Partners
