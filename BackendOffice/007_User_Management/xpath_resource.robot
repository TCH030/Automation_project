*** Variables ***

*** Keywords ***
Click Create New Button
    Sleep    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button    #click Create New Currency Button
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]    2
    Sleep    2

Click Edit Link
    Sleep    2
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[2]
    Sleep    2

Click View Link
    Sleep    2
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[2]    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/table/tbody/tr/td[7]/span/a[1]
    Sleep    2

Click Search button
    Sleep    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Sleep    2

Click Edit Button
    Sleep    2
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    Sleep    2

Rest Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    autotestuser
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    1
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    123456
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    123456
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/a
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
