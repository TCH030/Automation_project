*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${address}        172.16.50.51:9000
${protocol}       http
${SERVER}         ${protocol}://${address}    # server setting
${USERNAME}       kenny
${PASSWORD}       123456
${testingaccountID_player}    QATestingAccount001
${testingaccountID_user}    autotestuser
${testingpwd_user}    123456
${Accountname}    tsaic30

*** Keywords ***
Click Menu Tree
    Wait until element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    1

Open System Management submenu
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a
    Sleep    1

Click User Management in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[1]/div/a
    Sleep    1

Click Partner Management in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[2]/div/a
    Sleep    1

Click Game Management in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[3]/div/a
    Sleep    1

Click Currency Management in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[4]/div/a
#   =============== Partner Manage ==========================

Click Partner Management submenu
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/a
    Sleep    1

Click Game Management in submenu (Partner)
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[1]/div/a
    Sleep    1

Click Player Management in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[2]/div/a
    Sleep    1
#    =============== Report ==================================

Click Report submenu
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/a
    Sleep    1

Click Game income in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[1]/div/a
    Sleep    1

Click Game Comparison Across Partner in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[2]/div/a
    Sleep    1

Click TOP 100 Players Across Platform in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[3]/div/a
    Sleep    1

Click Player Transaction History in submenu
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[4]/div/a
    Sleep    1
