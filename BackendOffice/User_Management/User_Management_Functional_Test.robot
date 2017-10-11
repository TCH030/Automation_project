*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Check Create User Page
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click User Management Link
    Click Create New Button
    Page Should Contain    Partner
    Page Should Contain    User Name
    Page Should Contain    Status
    Page Should Contain    Password
    Page Should Contain    Confirm Password
    Page Should Contain    E-mail
    Page Should Contain    Game Income by Partner
    Page Should Contain    Player Transaction Report
    Page Should Contain    User Management
    Page Should Contain    Partner Management
    Page Should Contain    Player Income
    Page Should Contain    Partner Income
    Page Should Contain    Game List
    Page Should Contain    Game Management
    Page Should Contain    Player Management
    Page Should Contain    Currency List
    Page Should Contain    Confirmed Currency

Create User Management with Empty User Name
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click User Management Link
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    aa@aa.om
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create User with Empty Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click User Management Link
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    AutoTest
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    aa@aa.om
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create User with Empty Confirm Password
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click User Management Link
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    AutoTestuser
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1234567
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[6]/div/div/div[2]/div/input    aa@aa.om
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[5]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Click Cancel Button
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Click User Management Link
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]
    Sleep    0.5
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/a
    Should Be Equal    ${Get_Page_Title}    User Management
