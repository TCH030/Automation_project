*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables
Resource          ../Resource.robot

*** Variables ***

*** Test Cases ***
Disable User Management view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[1]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[2]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable User Management Create permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[2]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[2]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable User Management EDIT permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[3]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/div/div/table/tbody/tr[1]/td[7]/span/a[2]
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[3]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[2]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Partner Management view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[2]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Partner Management Create permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click Partner Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[2]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Partner Management Edit permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click Partner Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/div/div/div/div/table/tbody/tr[1]/td[5]/span/a[2]
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[3]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[3]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Game Management view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[3]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Game Management Create permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[2]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Game Management Edit permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[3]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click Game Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div[2]/div/table/tbody/tr[1]/td[5]/span/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[3]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[4]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Currency Management view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/a
    Sleep    1
    Element Should Not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[4]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Currency Management Create permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    1
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[2]/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[2]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Currency Management Edit permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Sleep    1
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[6]/div/button
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[3]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[5]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Currency History view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[6]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[6]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Sleep    1
    Element should not be visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button[2]
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[6]/td[4]/label/span/input
    Sleep    0.5
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[6]/td[2]/label/span/input
    Element should be disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[6]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[6]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Game Management (Partner) view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[8]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[8]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Partner Management submenu
    Sleep    2
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[1]/div
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[8]/td[4]/label/span/input
    Sleep    0.5
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[8]/td[2]/label/span/input
    Element Should be Disabled    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[8]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[8]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Player Management view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Partner Management submenu
    Sleep    2
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[2]/div
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Create Player permission in Partner Management
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Search button
    Click Edit Link
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses OK At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Partner Management submenu
    Click Player Management in submenu
    Sleep    0.5
    Element should not be visible    xpath=html/body/div[1]/div/div/section/div/h3/div/button
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Search button
    Click Edit Link
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[2]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[2]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses OK At this time
    Sleep    1

Disable Edit Player permission in Partner Management
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Search button
    Click Edit Link
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses OK At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Partner Management submenu
    Click Player Management in submenu
    Sleep    0.5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_player}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[4]/div/div[2]/div/div/div/div
    sleep    0.5
    Click Element    xpath=html/body/div[2]/div/div/div/ul/li[2]
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Sleep    1
    Element should not be visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div/table/tbody/tr/td[11]/span/a[1]
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Wait until element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/a    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Search button
    Click Edit Link
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[3]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[9]/td[3]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses OK At this time
    Sleep    1

Disable Game Income view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[11]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[11]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Report submenu
    Sleep    2
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[1]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[11]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[11]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable Game Comparison Across Partner view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[12]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[12]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Report submenu
    Sleep    2
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[2]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[12]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[12]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Disable TOP 100 Players Across Platform view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[13]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[13]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Report submenu
    Sleep    2
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[3]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[13]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[13]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

DisablePlayer Transaction History view permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Checkbox Should Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[14]/td[4]/label/span/input
    Sleep    0.5
    Unselect Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[14]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1
    Close Browser
    #Check Permission by test accountlogin
    Open Browser    ${SERVER}    ${BROWSER}    0
    Maximize Browser Window
    Input Text    userName    ${testingaccountID_user}
    Input Text    password    ${testingpwd_user}
    ${Get_captcha}=    Get Text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[4]
    Input text    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[3]/div/div/span/input    ${Get_captcha}
    Wait Until Element Is Visible    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button    2
    Click Element    xpath=html/body/div[1]/div/div/div/div/div[2]/form/div[5]/div/div/button
    Wait until element is visible    xpath=html/body/div[1]/div/div/header/nav/div[1]/a/div/img    5
    Click Menu Tree
    Click Report submenu
    Sleep    2
    Element Should not Be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[4]/div/a
    Close Browser
    #Reset Permission
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click User Management in submenu
    Sleep    2
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div[1]/div/div[2]/div/input    ${testingaccountID_user}
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Click Edit Link
    Sleep    2
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/h3/span    5
    Checkbox Should Not Be Selected    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[14]/td[4]/label/span/input
    Sleep    0.5
    Select Checkbox    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[7]/div/div/div/table/tbody/tr[14]/td[4]/label/span/input
    sleep    1
    Click Edit Button
    Choose OK On Next Confirmation
    Confirm Action    # Chooses Cancel At this time
    Sleep    1

Permission Reset
    Rest All Permission
