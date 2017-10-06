*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Open Menu Tree
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    10
    Click Element    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em
    Wait Until Page Contains    System Game Management
    Wait Until Page Contains    Partner Game Management
    Wait Until Page Contains    Currency List
    Wait Until Page Contains    Partner Management
    Wait Until Page Contains    User Management
    Wait Until Page Contains    Player Management
    Wait Until Page Contains    Player Transaction Report
    Wait Until Page Contains    Player Income
    Wait Until Page Contains    Partner Income
