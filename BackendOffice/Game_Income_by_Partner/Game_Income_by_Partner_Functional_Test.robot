*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Switch Time Zone
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Game Income by Partner Link
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div    
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
	${Time_ZONE_UTC}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div    
	Should be Equal    ${Time_ZONE_UTC}    UTC (GMT+0)
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div    
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
	${Time_ZONE_EDT}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div    
	Should be Equal    ${Time_ZONE_EDT}    EDT (GMT-4)
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div    
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[1]
	${Time_ZONE_CST}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div[2]/div/div/div/div    
	Should be Equal    ${Time_ZONE_CST}    CST (GMT+8)
Switch Time Range
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click Game Income by Partner Link
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[3]
	${Time_Range_Yesterday}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Should be Equal    ${Time_Range_Yesterday}    Yesterday
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[2]
	${Time_Range_Today}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Should be Equal    ${Time_Range_Today}    Today
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[4]
	${Time_Range_7Days}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Should be Equal    ${Time_Range_7Days}    Last 7 Days
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Wait Until element is Visible    xpath=/html/body/div[2]/div/div/div/ul/li[2]    2
	Click Element    xpath=/html/body/div[2]/div/div/div/ul/li[6]
	${Time_Range_Month-to-Date}    Get Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/div[2]/div/div/div/div
	Should be Equal    ${Time_Range_Month-to-Date}    Month-to-Date
	

	
    

