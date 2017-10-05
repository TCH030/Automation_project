*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot

*** Variables ***

*** Test Cases ***
Check System Game Management
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/div/a
    #Page Should Contain    Game Management    Debug
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    ${Get_Game_Name}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[1]
    ${Get_Game_ID}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[2]
    ${Get_Game_Status}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[4]/div/button
    ${Get_Geme_LaunchDate}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[3]
    Should Be Equal    ${Get_Page_Title}    Game Management
    Should Be Equal    ${Get_Game_Name}    Bloodlines
    Should Be Equal    ${Get_Game_ID}    BL_M4_V2_RECORDER;V:1
    Should Be Equal    ${Get_Geme_LaunchDate}    2017/08/22 09:28:46
    Should Be Equal    ${Get_Game_Status}    Active

Check Partner Game Management
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/div/a
    Wait Until Page Contains    Game Management    3
    Wait Until Page Contains    Machine Gun Unicorn    1
    Wait Until Page Contains    Mirror Magic
    Wait Until Page Contains    Hear Me Roar
    Wait Until Page Contains    Fruity Grooves
    Wait Until Page Contains    Sea Raider
    Wait Until Page Contains    Beir Fest
    Wait Until Page Contains    Bark In The Park
    Wait Until Page Contains    Rumpelthrillspins
    Wait Until Page Contains    BL_M4_V2_RECORDER
    Wait Until Page Contains    test123
    Wait Until Page Contains    M4-0041;V:1
    Wait Until Page Contains    kennytest
    Wait Until Page Contains    12313213
    Wait Until Page Contains    testgame123
    Wait Until Page Contains    Journey To The West

Check Currency
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
