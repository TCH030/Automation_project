*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot

*** Variables ***

*** Test Cases ***
Open Menu Tree
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait Until Page Contains    System Game Management
    Wait Until Page Contains    Partner Game Management
    Wait Until Page Contains    Currency List
    Wait Until Page Contains    Partner Management
    Wait Until Page Contains    User Management
    Wait Until Page Contains    Player Management
    Wait Until Page Contains    Player Transaction Report
    Wait Until Page Contains    Player Income
    Wait Until Page Contains    Partner Income

Check System Game Management
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/div/a
    ${Get_Game_Name}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[1]
    ${Get_Game_ID}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[2]
    ${Get_Game_Status}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[4]/div/button
    ${Get_Geme_LaunchDate}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/table/tbody/tr[1]/td[3]
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
    Wait Until Page Contains    Machine Gun Unicorn
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
