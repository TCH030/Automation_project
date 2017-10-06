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
    Page Should Contain    System Game Management
    Page Should Contain    Partner Game Management
    Page Should Contain    Currency List
    Page Should Contain    Partner Management
    Page Should Contain    User Management
    Page Should Contain    Player Management
    Page Should Contain    Player Transaction Report
    Page Should Contain    Player Income
    Page Should Contain    Partner Income
