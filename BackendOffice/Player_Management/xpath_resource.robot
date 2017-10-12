*** Variables ***

*** Keywords ***
Click Menu Tree
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5

Click Player Management Link
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[6]/div/a
    Sleep    0.5
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    5

Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button    #click Create New Currency Button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2

Click Edit Link
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/table/tbody/tr/td[11]/span/a[1]

Rest Player Status
    Click Edit Link
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div/div/div
    Wait until element is visible    xpath=html/body/div[2]/div/div/div/ul/li[2]    2
    Click Element    xpath=xpath=html/body/div[2]/div/div/div/ul/li[1]
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Sleep    1
    Confirm Action
