*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Create Curreny with Empty ISO Code
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    testing
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/input    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create Curreny with Empty Curr. Name
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    testing
    Sleep    0.5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/input    1
    Sleep    0.5
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create Curreny with Empty Exchange Rate (USD)
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    testing
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    testing
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create Curreny with Empty Exchange Rate (CYN)
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    testing
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    testing
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/input    1
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[2]
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Click Cancel Button
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[2]/div/div/button[1]
    Sleep    0.5
    ${Get_Page_Title}    Get Text    xpath=html/body/div[1]/div/div/section/div/h3/span
    Should Be Equal    ${Get_Page_Title}    Currency Management
