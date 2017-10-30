*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot
Resource          xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Switch Time Zone
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Time_ZONE_UTC}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_UTC}    UTC (GMT+0)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    ${Time_ZONE_EDT}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_EDT}    EDT (GMT-4)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[1]
    ${Time_ZONE_CST}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_CST}    CST (GMT+8)

Switch Time Range
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    ${Time_Range_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Yesterday}    Yesterday
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Today}    Today
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[4]
    ${Time_Range_7Days}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_7Days}    Last 7 Days
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[6]
    ${Time_Range_Month-to-Date}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Month-to-Date}    Month-to-Date

Check calander after set time range to Today
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${get_value_today}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${today}    ${get_value_today}
    ${get_value_end}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${today}    ${get_value_end}

Check calander after set time range to Yesterday
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Sleep    1
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${Yesterday_start}    Subtract Time From Date    ${today}    1    result_format=%Y-%m-%d
    ${get_value_Yesterday}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${Yesterday_start}    ${get_value_Yesterday}
    ${Yesterday_end}    Subtract Time From Date    ${today}    1    result_format=%Y-%m-%d
    ${get_value_Yesterday}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${Yesterday_end}    ${get_value_Yesterday}

Check calander after set time range to Last 7 days
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[4]
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${Last7Days_start}    Subtract Time From Date    ${today}    7 days    result_format=%Y-%m-%d
    log    ${today}
    log    ${Last7Days_start}
    ${get_value_Last7Days_start}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${Last7Days_start}    ${get_value_Last7Days_start}
    ${get_value_Last7Days_end}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${today}    ${get_value_Last7Days_end}

Check select one game
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[1]
    Sleep    1
    Double Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]
    Sleep    1
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Bloodlines

Check select All games
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Select checkbox    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/label/span[1]/input
    Sleep    1
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Bloodlines
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Machine Gun Unicorn
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Mirror Magic
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Hear Me Roar
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Fruity Grooves
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Sea Raider
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Beir Fest
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Bark In The Park
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Rumpelthrillspins
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    BL_M4_V2_RECORDER
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    M4-0041;V:1
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div    Journey To The West

Check select one Parnter
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[1]
    Sleep    1
    Double Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]
    Sleep    1
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div    BBIN Staging

Check select All Parnters
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Select checkbox    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/label/span[1]/input
    Sleep    1
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div    BBIN Staging
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div    GPK Staging
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div    GT Staging test
    Element Should Contain    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div    GT Staging

Download File checking All GAME/Partner Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Select checkbox    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/label/span[1]/input
    Sleep    1
    Select checkbox    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/label/span[1]/input
    Sleep    1
    Click Search button
    Sleep    2
    Click Export button
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner_ All partners.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner_ All partners.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner_ All partners.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner_ All partners.csv

Download File checking-Partner_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Select checkbox    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/label/span[1]/input
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/div/div/div
    Sleep    1
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[1]
    Sleep    1
    Double Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]
    Sleep    1
    Click Search button
    Sleep    5
    Click Export button
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner _ BBIN Staging.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner _ BBIN Staging.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner _ BBIN Staging.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game_ All games, Partner _ BBIN Staging.csv

Download File checking-Game_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    Sleep    0.5
    Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    2017-09-01
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/span/span/input
    Sleep    0.5
    Input Text    xpath=html/body/div[3]/div/div/div/div/div[1]/div/input    2017-09-30
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[1]/div/div/div[2]/div/div/div/div
    Sleep    0.5
    Click Element    xpath=html/body/div[4]/div/div/div/ul/li[1]
    Sleep    1
    Double Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Sleep    1
    Select checkbox    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[2]/div/div/div[2]/div/label/span[1]/input
    Sleep    1
    Click Search button
    Sleep    3
    Click Export button
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game _ Bloodlines, Partner_ All partners.csv    15
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game _ Bloodlines, Partner_ All partners.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game _ Bloodlines, Partner_ All partners.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Comparison Across Partner - Game _ Bloodlines, Partner_ All partners.csv

Incorrect Date format
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    Sleep    0.5
    Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    2017/05/01
    Click Search button
    Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${get_value_calander}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    should be equal    ${today}    ${get_value_calander}

End date value is early then Start date
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game Comparison Across Partner in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    wait until element is visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    5
    Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    2100-11-01
    Double Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Click Search button
    wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/div    5
    ${Error_enddate}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[1]/div/div[2]/div/div
    ${error_endtime}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]/div[2]/div/div[2]/div/div
    should be equal    ${Error_enddate}    End Date can not be before Start Date
    should be equal    ${error_endtime}    End Date can not be before Start Date
