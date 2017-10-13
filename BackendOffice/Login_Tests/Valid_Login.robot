*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot

*** Variables ***

*** Test Cases ***
Test Login
    Open Broser and Login automatically
    Wait Until Page Contains    Start    10
