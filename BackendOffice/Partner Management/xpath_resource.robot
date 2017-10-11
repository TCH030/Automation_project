*** Variables ***

*** Keywords ***
Click Menu Tree
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait until element is visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[5]/div/a    5

Click Partner Management Link
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[4]/div/a
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button    5

Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button    #click Create New Currency Button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
