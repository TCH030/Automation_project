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
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[1]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
	Sleep    0.5
    ${Time_ZONE_UTC}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[1]/div/div[2]/div/div/div/div                                     
    Should be Equal    ${Time_ZONE_UTC}    UTC (GMT+0)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[1]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
	Sleep    0.5
    ${Time_ZONE_EDT}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[1]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_EDT}    EDT (GMT-4)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[1]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[1]
	Sleep    0.5
    ${Time_ZONE_CST}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[1]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_CST}    CST (GMT+8)

Switch Time Range
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    ${Time_Range_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Yesterday}    Yesterday
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
    ${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Today}    Today
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[4]
    ${Time_Range_7Days}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_7Days}    Last 7 Days
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[6]
    ${Time_Range_Month-to-Date}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Month-to-Date}    Month-to-Date

Switch filter View by
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[1]/div/div[2]/div/div/div/div
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
	Sleep    1   
	${filter_currency}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[3]/div/div[1]/label
    Should be equal    ${filter_currency}    Currency
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[1]/div/div[2]/div/div/div/div
    Wait until element is visible    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[3]
	Sleep    1
    ${filter_Merchant}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[4]/div/div[1]/label
    Should be equal    ${filter_Merchant}    Affiliate Code
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[1]/div/div[2]/div/div/div/div
    Wait until element is visible    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[4]
	Sleep    1
    ${filter_Device}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[5]/div/div[1]/label
    Should be equal    ${filter_Device}    Device
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[1]/div/div[2]/div/div/div/div
    Wait until element is visible    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[1]
	Sleep    1
    ${filter_Game}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[2]/div/div[1]/label
    Should be equal    ${filter_Game}    Game

Check calander after set time range to Today
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div                       
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
	Sleep    1
    ${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    ${today}    Get Current Date    result_format=%Y-%m-%d
    Sleep    0.5
    ${get_value_today}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    should be equal    ${today}    ${get_value_today}
    Sleep    0.5
    ${get_value_end}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/span/div/input
    should be equal    ${today}    ${get_value_end}

Check calander after set time range to Yesterday
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Sleep    1
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
    sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${Yesterday_start}    Subtract Time From Date    ${today}    1    result_format=%Y-%m-%d
    sleep    1
    ${get_value_Yesterday}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    should be equal    ${Yesterday_start}    ${get_value_Yesterday}
    ${Yesterday_end}    Subtract Time From Date    ${today}    1    result_format=%Y-%m-%d
    Sleep    1
    ${get_value_Yesterday}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/span/div/input
    should be equal    ${Yesterday_end}    ${get_value_Yesterday}

Check calander after set time range to Last 7 days
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[4]
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${Last7Days_start}    Subtract Time From Date    ${today}    7 days    result_format=%Y-%m-%d
    log    ${today}
    log    ${Last7Days_start}
	Sleep    1
    ${get_value_Last7Days_start}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    should be equal    ${Last7Days_start}    ${get_value_Last7Days_start}
    Sleep    1
	${get_value_Last7Days_end}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/span/div/input
    should be equal    ${today}    ${get_value_Last7Days_end}

Download File checking-Default
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${start}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    #    log    ${today}
    log    ${start}
    #Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    Sleep    1
	Clear Element Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input
	Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    ${start}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Sleep    1
    Click Search button
    Sleep    2
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ All Games.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ All Games.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ All Games.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ All Games.csv

Download File checking-Partner_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div[1]/div/div[2]/div/div/div/div
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${start}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    #    log    ${today}
    log    ${start}
#    Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input   
#	Sleep    1
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
	Sleep    1
	Click Element   xpath=html/body/div[3]/div/div/div/div/div[1]/div/input
	Sleep    1
	Click Element   xpath=html/body/div[3]/div/div/div/div/div[1]/div/input
	#Sleep    1
	#Press Combination    KEY.CTRL    A
	#Sleep    1   
	#Press Combination    KEY.DEL
	Sleep    1
    Input Text    xpath=html/body/div[3]/div/div/div/div/div[1]/div/input    ${start}
	Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Sleep    1
    Click Search button
    Sleep    3
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ BBIN Staging, Game_ All Games.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ BBIN Staging, Game_ All Games.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ BBIN Staging, Game_ All Games.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ BBIN Staging, Game_ All Games.csv

Download File checking-Game_Selected
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${startday}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    sleep    1
    Input Text    xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input    ${startday}
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[4]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/span/div/input
    sleep    1
    Input Text    xpath=html/body/div[3]/div/div/div/div/div[1]/div/input    ${today}
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]
    Sleep    3
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[2]/div/div[2]/div/div/div/div
    Sleep    3
    Wait until element is Visible    xpath=html/body/div[4]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[4]/div/div/div/ul/li[2]
    Sleep    1
    Click Search button
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/a/button    5
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ Bloodlines.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ Bloodlines.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ Bloodlines.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ All partners, Game_ Bloodlines.csv

Download File checking-View_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[1]/div/div[2]/div/div/div/div
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${start}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    #    log    ${today}
    log    ${start}
    #Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    Input Text    xpath=html/body/div[3]/div/div/div/div/div[1]/div/input    ${start}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]
    Sleep    1
    Click Search button
    Sleep    2
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income View by CURRENCY - Partner_ All partners, Currency_ All Currency.csv    10
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income View by CURRENCY - Partner_ All partners, Currency_ All Currency.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income View by CURRENCY - Partner_ All partners, Currency_ All Currency.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income View by CURRENCY - Partner_ All partners, Currency_ All Currency.csv    10

Download File checking-GAME/Partner_Selected
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${startday}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    sleep    1
    Input Text    xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input    ${startday}
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/span/div/input
    sleep    1
    Input Text    xpath=html/body/div[3]/div/div/div/div/div[1]/div/input    ${today}
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]
	sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div[1]/div/div[2]/div/div/div/div
    Sleep    3
    Wait until element is Visible    xpath=html/body/div[4]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[4]/div/div/div/ul/li[2]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[2]/div/div[2]/div/div/div/div
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[5]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[5]/div/div/div/ul/li[2]
    Sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${start}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    #    log    ${today}
    log    ${start}
    #Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    #Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    #Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    ${start}
    #Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[5]/div[3]/div/div/div
    Sleep    1
    Click Search button
    Sleep    2
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ BBIN Staging, Game_ Bloodlines.csv    10
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income View by GAME - Partner_ BBIN Staging, Game_ Bloodlines.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner GAME - Partner_ BBIN Staging, Game_ Bloodlines.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner GAME - Partner_ BBIN Staging, Game_ Bloodlines.csv    10

Download File checking-GAME/View_Selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div[1]/div/div[2]/div/div/div/div
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[1]/div/div[2]/div/div/div/div
    Sleep    1
    Wait until element is Visible    xpath=html/body/div[3]/div/div/div/ul/li[4]    5
    Click Element    xpath=html/body/div[3]/div/div/div/ul/li[4]
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]/div[5]/div/div[2]/div/div/div/div
    Sleep    3
    wait until element is visible    xpath=html/body/div[4]/div/div/div/ul/li[2]    5
    Click element    xpath=html/body/div[4]/div/div/div/ul/li[2]
    Sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${start}    Subtract Time From Date    ${today}    30 days    result_format=%Y-%m-%d
    #    log    ${today}
    log    ${start}
    #Click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[1]/div/div[2]/div/span/span/input
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    sleep    1
    Input Text    xpath=html/body/div[5]/div/div/div/div/div[1]/div/input    ${start}
	Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]
    Sleep    1
    Click Search button
    Sleep    2
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\Game Income View by DEVICE - Partner_ BBIN Staging, Device_ desktop.csv    10
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income View by DEVICE - Partner_ BBIN Staging, Device_ desktop.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\Game Income View by DEVICE - Partner_ BBIN Staging, Device_ desktop.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Game Income View by DEVICE - Partner_ BBIN Staging, Device_ desktop.csv    10

Incorrect Date format
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    Input Text    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    2017/05/01
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div[2]
    #Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input    5
	sleep    1
    ${today}    Get Current Date    result_format=%Y-%m-%d
    ${get_value_calander}    Get Value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    should be equal    ${today}    ${get_value_calander}

End date value is early then Start date
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/span/div/input
    wait until element is visible    xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input    5
	click element  xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input
    Clear element text    xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input
	sleep    5
    Input Text    xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input    2001-11-01
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div
    Sleep    1
    #    Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div/div[1]/div/input
    Click Search button
    wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/div    5
    Sleep    0.5
	${Error_enddate}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/div
    Sleep    0.5
	${error_endtime}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[4]/div/div[2]/div/div
    should be equal    ${Error_enddate}    End Date can not be before Start Date
    should be equal    ${error_endtime}    End Date can not be before Start Date

End time value is early then Start time
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Click Game income in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[2]/div/div[2]/div/span/input
    wait until element is visible    xpath=html/body/div[2]/div/div/div/div[1]/input    5
    Input Text    xpath=html/body/div[2]/div/div/div/div[1]/input    23:59:59
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div
    Wait until element is not visible    xpath=html/body/div[2]/div/div/div/div[1]/input    5
    Click Search button
    wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/div    5
    Sleep    0.5
	${Error_enddate}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[3]/div/div[2]/div/div
    Sleep    0.5
	${error_endtime}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[4]/div/div[2]/div/div
    should be equal    ${Error_enddate}    End Date can not be before Start Date
    should be equal    ${error_endtime}    End Date can not be before Start Date
    #Get File Test
    #    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner_ BBIN Staging, Currency_ CNY.csv
    #    ${GETFILE}    get file    C:\\Users\\${Accountname}\\Downloads\\npp-robot-master.zip
    #    log    ${GETFILE}
    #    Remove File    C:\\Users\\${Accountname}\\Downloads\\Game Income by Partner View by CURRENCY - Partner_ BBIN Staging, Currency_ CNY.csv
    #    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\Test.txt
    #    Game Income by Partner View by GAME - Partner_ BBIN Staging, Game_ All Games.csv
