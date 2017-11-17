*** Variables ***

*** Keywords ***
Click Create New Button
    sleep    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button    #click Create New Currency Button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
    sleep    2
#Click View Link
#    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div/div/table/tbody/tr[1]/td[5]/span/a[1]

#Click Edit link
#    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div/div/table/tbody/tr[1]/td[5]/span/a[2]