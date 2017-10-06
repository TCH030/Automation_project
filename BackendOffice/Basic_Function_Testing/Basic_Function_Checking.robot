*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Check System Game Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    #Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Click Menu Tree
    #Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/div/a
    #Page Should Contain    Game Management    Debug
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    ${Get_Game_Name}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[1]
    ${Get_Game_ID}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[2]
    ${Get_Game_Status}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[4]/div/button
    ${Get_Geme_LaunchDate}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[3]
    ${Get_Game_Bloodlines}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[1]
    ${Get_Game_Name_Machine Gun Unicorn}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[2]/td[1]
    ${Get_Game_Mirror Magic}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[3]/td[1]
    ${Get_Game_Hear Me Roar}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[4]/td[1]
    ${Get_Game_Fruity Grooves}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[5]/td[1]
    ${Get_Game_Name_Sea Raider}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[6]/td[1]
    ${Get_Game_Beir Fest}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[7]/td[1]
    ${Get_Game_Bark In The Park}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[8]/td[1]
    ${Get_Game_Rumpelthrillspins}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[9]/td[1]
    ${Get_Game_BL_M4_V2_RECORDER}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[10]/td[1]
    ${Get_Game_test123}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[11]/td[1]
    ${Get_Game_M4-0041;V:1}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[12]/td[1]
    ${Get_Game_kennytest}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[13]/td[1]
    ${Get_Game_12313213}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[14]/td[1]
    ${Get_Game_testgame123}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[15]/td[1]
    ${Get_Game_Journey To The West}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[16]/td[1]
    ${Get_ID_Bloodlines}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[2]
    ${Get_ID_Name_Machine Gun Unicorn}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[2]/td[2]
    ${Get_ID_Mirror Magic}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[3]/td[2]
    ${Get_ID_Hear Me Roar}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[4]/td[2]
    ${Get_ID_Fruity Grooves}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[5]/td[2]
    ${Get_ID_Name_Sea Raider}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[6]/td[2]
    ${Get_ID_Beir Fest}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[7]/td[2]
    ${Get_ID_Bark In The Park}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[8]/td[2]
    ${Get_ID_Rumpelthrillspins}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[9]/td[2]
    ${Get_ID_BL_M4_V2_RECORDER}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[10]/td[2]
    ${Get_ID_test123}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[11]/td[2]
    ${Get_ID_M4-0041;V:1}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[12]/td[1]
    ${Get_ID_kennytest}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[13]/td[2]
    ${Get_ID_12313213}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[14]/td[2]
    ${Get_ID_testgame123}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[15]/td[2]
    ${Get_ID_Journey To The West}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[16]/td[2]
    #Should Be Equal    ${Get_Page_Title}    Game Management
    Should Be Equal    ${Get_Game_Name}    Bloodlines
    Should Be Equal    ${Get_Game_ID}    BL_M4_V2_RECORDER;V:1
    Should Be Equal    ${Get_Geme_LaunchDate}    2017/08/22 09:28:46
    Should Be Equal    ${Get_Game_Status}    Active
    Should Be Equal    ${Get_Game_Bloodlines}    Bloodlines
    Should Be Equal    ${Get_Game_Name_Machine Gun Unicorn}    Machine Gun Unicorn
    Should Be Equal    ${Get_Game_Mirror Magic}    Mirror Magic
    Should Be Equal    ${Get_Game_Hear Me Roar}    Hear Me Roar
    Should Be Equal    ${Get_Game_Fruity Grooves}    Fruity Grooves
    Should Be Equal    ${Get_Game_Name_Sea Raider}    Sea Raider
    Should Be Equal    ${Get_Game_Beir Fest}    Beir Fest
    Should Be Equal    ${Get_Game_Bark In The Park}    Bark In The Park
    Should Be Equal    ${Get_Game_Rumpelthrillspins}    Rumpelthrillspins
    Should Be Equal    ${Get_Game_BL_M4_V2_RECORDER}    BL_M4_V2_RECORDER
    Should Be Equal    ${Get_Game_test123}    test123
    Should Be Equal    ${Get_Game_M4-0041;V:1}    M4-0041;V:1
    Should Be Equal    ${Get_Game_kennytest}    kennytest
    Should Be Equal    ${Get_Game_12313213}    12313213
    Should Be Equal    ${Get_Game_testgame123}    testgame123
    Should Be Equal    ${Get_Game_Journey To The West}    Journey To The West
    Should Be Equal    ${Get_ID_Bloodlines}    BL_M4_V2_RECORDER;V:1
    Should Be Equal    ${Get_ID_Name_Machine Gun Unicorn}    MGU_M4_V1_RECORDER;V:1
    Should Be Equal    ${Get_ID_Mirror Magic}    MIRROR_MAGIC_M4_V1_RECORDER;V:1
    Should Be Equal    ${Get_ID_Hear Me Roar}    DINO_M4_V2_RECORDER;V:1
    Should Be Equal    ${Get_ID_Fruity Grooves}    FRUITY_GROOVES_M4_V1_RECORDER;V:1
    Should Be Equal    ${Get_ID_Name_Sea Raider}    M4-0075;V:1
    Should Be Equal    ${Get_ID_Beir Fest}    BF_M4_V2_RECORDER;V:1
    Should Be Equal    ${Get_ID_Bark In The Park}    BARK_PARK_M4_V1_RECORDER;V:1
    Should Be Equal    ${Get_ID_Rumpelthrillspins}    M4-0072;V:1
    Should Be Equal    ${Get_ID_BL_M4_V2_RECORDER}    BL_M4_V2_RECORDER
    Should Be Equal    ${Get_ID_test123}    test123
    Should Be Equal    ${Get_ID_M4-0041;V:1}    M4-0041;V:1
    Should Be Equal    ${Get_ID_kennytest}    kennytest
    Should Be Equal    ${Get_ID_12313213}    12313213
    Should Be Equal    ${Get_ID_testgame123}    testgame123
    Should Be Equal    ${Get_ID_Journey To The West}    M4-0067;V:1

Check Partner Game Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/div/a
    Page Should Contain    Game Management    3
    Page Should Contain    Machine Gun Unicorn    1
    Page Should Contain    Mirror Magic    3
    Page Should Contain    Hear Me Roar    3
    Page Should Contain    Fruity Grooves    3
    Page Should Contain    Sea Raider    3
    Page Should Contain    Beir Fest    3
    Page Should Contain    Bark In The Park    3
    Page Should Contain    Rumpelthrillspins    3
    Page Should Contain    BL_M4_V2_RECORDER    3
    Page Should Contain    test123    3
    Page Should Contain    M4-0041;V:1    3
    Page Should Contain    kennytest    3
    Page Should Contain    12313213    3
    Page Should Contain    testgame123    3
    Page Should Contain    Journey To The West    3

Check Currency Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/div/a
    Wait Until Page Contains    Currency List
    Wait Until Page Contains    VND
    Wait Until Page Contains    VND
    Wait Until Page Contains    USD
    Wait Until Page Contains    JPY
    Wait Until Page Contains    MYR
    Wait Until Page Contains    THB
    Wait Until Page Contains    BGD
    Wait Until Page Contains    KRW
    Wait Until Page Contains    Renminbi Chinese Yen
    Wait Until Page Contains    Vietnamese Dong
    Wait Until Page Contains    USD Dollar
    Wait Until Page Contains    Japanese Yen
    Wait Until Page Contains    Maldivian Rufiyaa
    Wait Until Page Contains    Thai Baht
    Wait Until Page Contains    Bulgarian Lev
    Wait Until Page Contains    Korean Republic Won
    Wait Until Page Contains    2017/10/02 17:31
    Wait Until Page Contains    2017/08/09 17:36
    Wait Until Page Contains    2017/09/13 14:32
    Wait Until Page Contains    2017/09/11 14:33
    Wait Until Page Contains    2017/09/11 14:33
    Wait Until Page Contains    2017/09/21 15:02
    Wait Until Page Contains    2017/09/27 10:24
    Wait Until Page Contains    2017/10/03 14:42

Check Partner Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[4]/div/a
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Partner List
    Page Should Contain    ${Get_Page_Title}
    Page Should Contain    BBIN Staging
    Page Should Contain    c304afdf-2f61-6369-c088-924f99e1be1a
    Page Should Contain    GPK Staging
    Page Should Contain    db7b3a43-89c6-3751-16e6-baa24434b393
    Page Should Contain    Game Management
    Page Should Contain    GT Staging
    Page Should Contain    c22e510f-821b-4aa4-b86e-06bc90fee458

Check User Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    User Management
    Page Should Contain    User Name
    Page Should Contain    Partner
    Page Should Contain    GPK Staging
    Page Should Contain    Status
    Page Should Contain    Result per page

Check Player Management Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[6]/div/a
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Player Management
    Page Should Contain    Player ID
    Page Should Contain    Affiliate Code
    Page Should Contain    Result per page
    Page Should Contain    Player Type

Check Game Income by Partner Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[7]/div/a
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Game Income by Partner
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

Check Player Transaction Report Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[8]/div/a
    Page Should Contain    User Id:
    Page Should Contain    Time Range Presets
    Page Should Contain    Start Date
    Page Should Contain    End Date
    Page Should Contain    Partner
    Page Should Contain    View By
    Page Should Contain    Start Time
    Page Should Contain    End Time
    Page Should Contain    Report Currency
    Page Should Contain    Game
    Page Should Contain    Query Type
    Page Should Contain    TimeZone
    Page Should Contain    partnerID
    Page Should Contain    Transaction ID:

Check Player Income page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[9]/div/a
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Player Income
    Page Should Contain    Time Zone
    Page Should Contain    Time Range Presets
    Page Should Contain    Start Date
    Page Should Contain    End Date
    Page Should Contain    Partner
    Page Should Contain    Start Time
    Page Should Contain    End Time
    Page Should Contain    Report Currency

Check Partner Income Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[10]/div/a
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    Partner Income
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
