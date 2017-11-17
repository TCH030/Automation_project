*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${SERVER_jenkins}         https://jenkins.star9ad.com:8083/job/BO_automation_Chrome/    # server setting
${SERVER_gmail}         https://gmail.com  # server setting

${USERNAME_gmail}       charles.t@gen-game.com
${PASSWORD_gmail}       19770530
${USERNAME_jenkins}    charles.t
${PASSWORD_jenkins}    123456

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
Save File
    
    Mouse move    nX=658    nY=576
    Sleep    1
	Mouse Click   strButton=LEFT
    Sleep    1
	Mouse move    nX=932    nY=967
    Sleep    1
	Mouse Click   strButton=LEFT
