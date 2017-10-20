*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ./xpath_resource.robot    # using resource to store xpath and all other Variables

*** Variables ***

*** Test Cases ***
Open/Close System Management submenu
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    Click Menu Tree
	Open System Management submenu
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[1]/div/a    User Management
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[2]/div/a    Partner Management
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[3]/div/a    Game Management
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[4]/div/a    Currency Management
    Sleep    0.5
    Open System Management submenu
    Wait until Element is not Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[1]/div/a    1
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[1]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[2]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[3]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[1]/ul/li[4]/div/a
Open/Close Partner Management submenu
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/a
    Wait until Element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[1]/div/a     1
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[1]/div/a    Game Management
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[2]/div/a    Player Management
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/a
    Wait until Element is not Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[1]/div/a    1
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[1]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[2]/ul/li[2]/div/a
Open/Close Report submenu
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    5
    
    Wait Until element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/a    1
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/a
    Wait until Element is Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[1]/div/a     1
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[1]/div/a    Game Income
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[2]/div/a    Game Comparison Across Partner
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[3]/div/a    TOP 100 Players Across Platform
    Element should contain    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[4]/div/a    Player Transaction History
    Sleep    0.5
    Click Element    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/a
    Wait until Element is not Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[1]/div/a    1
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[1]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[2]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[3]/div/a
    Element should not be Visible    xpath=html/body/div[1]/div/div/aside/div/nav/ul/li[3]/ul/li[4]/div/a
