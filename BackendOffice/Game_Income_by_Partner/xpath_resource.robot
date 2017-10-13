*** Variables ***

*** Keywords ***
Click Menu Tree
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5

Click Game Income by Partner Link
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[7]/div/a
    Sleep    0.5
    Wait Until Element is Visible    xpath=//*[@id="root"]/div/div/section/div/h3/a    5

Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button    #click Create New Currency Button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
Click Edit Link
    Wait until element is Visible     xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[2]    2
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[2]
Click View Link
    Wait until element is Visible     xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[2]    2
	Click Element    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[1]
Click Search button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[6]/div/div/button