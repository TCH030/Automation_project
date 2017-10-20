*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot

*** Variables ***

*** Test Cases ***
Test Login
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/section/div/div/div[1]/div    5
