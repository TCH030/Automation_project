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
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    ${Time_ZONE_UTC}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_UTC}    UTC (GMT+0)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[3]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[3]
    ${Time_ZONE_EDT}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_EDT}    EDT (GMT-4)
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[1]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[1]
    ${Time_ZONE_CST}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div
    Should be Equal    ${Time_ZONE_CST}    CST (GMT+8)

Switch Time Range
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[3]
    Sleep    1
	${Time_Range_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Yesterday}    Yesterday
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
	${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Today}    Today
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[4]
    Sleep    1
	${Time_Range_7Days}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_7Days}    Last 7 Days
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[5]
    Sleep    1
	${Time_Range_Month-to-Date}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Should be Equal    ${Time_Range_Month-to-Date}    Last Month

Switch Report Currency Type
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
	${filter_Wallet_Transaction}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div/div[2]/div/div[2]/div/div/div/div
    Should be equal    ${filter_Wallet_Transaction}    CNY
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[1]
    Sleep    1
    ${filter_Wallet_Transaction}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div/div[2]/div/div[2]/div/div/div/div
    Should be equal    ${filter_Wallet_Transaction}    USD

Check calander after set time range to Today
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/div/div
    Wait Until element is Visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    CLick Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    ${today}    Get Current Date    result_format=%Y-%m-%d
	Sleep    1
    ${get_value_today}    Get value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    should be equal    ${today}    ${get_value_today}
	Sleep    1
    ${get_value_end}    Get value    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div[1]/div/div[2]/div/span/div/input
    should be equal    ${today}    ${get_value_end}

Query a report with default setting
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Search button
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/b    5
    ${Report_title}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/b
    ${Report_condition}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/span[2]
    should be equal    ${Report_title}    TOP 100 Players Across Platform
    Should be equal    ${Report_condition}    Partner: All partners

Export a report with default setting
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Search button
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/b    5
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner_ All partners.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner_ All partners.csv
    #    ${TextFileContent}=    Get File    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner_ All partners.csv
    #    Element should contain    xpath=//*[@id="root"]/div/div/section/div/div[2]/div/div/div[2]    ${TextFileContent}
    Remove file    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner_ All partners.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner_ All partners.csv

Query a report with Partner selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div/div[1]/div/div[2]/div/div/div/div
    Sleep    1
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    CLick Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Click Search button
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/b    5
    ${Report_title}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/b
    ${Report_condition}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/span[2]
    should be equal    ${Report_title}    TOP 100 Players Across Platform
    Should be equal    ${Report_condition}    Partner : BBIN Staging

Export a report with Partner selected
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Report submenu
    Sleep    1
    Click TOP 100 Players Across Platform in submenu
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[3]/div/div[1]/div/div[2]/div/div/div/div
    Sleep    1
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    1
    CLick Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]
    Click Search button
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/div/b    5
    Click Export button
    Sleep    2
    Run Keyword And Ignore Error    Save File
    Wait Until Created    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner _ BBIN Staging.csv
    File Should Exist    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner _ BBIN Staging.csv
    Remove file    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner _ BBIN Staging.csv
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\TOP 100 Players Across Platform - Partner _ BBIN Staging.csv
