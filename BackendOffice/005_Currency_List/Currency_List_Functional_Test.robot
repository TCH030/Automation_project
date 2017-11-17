*** Settings ***
Test Teardown     Close ALL Browsers
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
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/div    5
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
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/div    5
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
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/div    5
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
	Sleep    0.5
    ${Empty_error_message}    Get Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/div
    Should be Equal    ${Empty_error_message}    This field is required

Create New Currency with dup currency code
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    CYN
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    Renminbi Chinese Yen
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/input    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1
    Click Create Button
    Sleep    1
    ${error_message}    Confirm Action
    Should be Equal    ${error_message}    Create currency Error

Create New Currency
    ${RandonCurrency}=    Generate Random String    3    [UPPER]
    log    ${RandonCurrency}
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    Click Create New Button
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[1]/div/div/div[2]/div/input    ${RandonCurrency}
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[2]/div/div/div[2]/div/input    ${RandonCurrency}
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[3]/div/div/div[2]/div/input    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div/div/form/div[1]/div[4]/div/div/div[2]/div/input    1
    Click Create Button
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    1
    page should contain    ${RandonCurrency}
    #Delete USER via API Request
    Create Session    BO    http://${APIserverIP}:8083
    ${resp}=    Delete    BO    api/currency?baseCurrency=USD&targetCurrency=${RandonCurrency}
    Should Be Equal As Strings    ${resp.status_code}    200

Update CNY Currency value
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    ${current_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    log    ${current_number}
    Sleep    1
    Clear Element Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    6.55123
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[6]/div/button
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    5
    ${new_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    should be equal    ${new_number}    6.55123


Currency is over 5 decimals
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    ${current_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    log    ${current_number}
    Sleep    1
    Clear Element Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    6.5512311
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[6]/div/button
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    5
    ${new_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    should be equal    ${new_number}    6.55123


Currency less than 5 decimals
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    ${current_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    log    ${current_number}
    Sleep    1
    Clear Element Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    6.551
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[6]/div/button
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    5
    ${new_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    should be equal    ${new_number}    6.55100

Open History for curreny
    Open Broser and Login automatically
    Wait Until Element is Visible    xpath=html/body/div[1]/div/div/header/nav/div[2]/ul[1]/li/span/a[1]/em    2
    Click Menu Tree
    Open System Management submenu
    Click Currency Management in submenu
    ${current_number}    get value    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    log    ${current_number}
    ${RandonNumber}=    Generate Random String    5    [NUMBERS]
    ${Randon_value}=    set variable    6.${RandonNumber}
    Sleep    1
    Clear Element Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input
    Sleep    1
    Input Text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[3]/span/input    ${Randon_value}
    Sleep    1
    Click element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/div/table/tbody/tr[1]/td[6]/div/button
    Sleep    1
    Choose OK On Next Confirmation
    Confirm Action
    Sleep    2
    Click element    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[2]/a
    Sleep    2
    Choose OK On Next Confirmation
    Confirm Action
    Click Element    xpath=html/body/div[1]/div/div/section/div/h3/div/button[2]
	Sleep    2
	${title}    get text    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div/div[1]/label
	log    ${title}
	double click element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div/div[1]/label
	Sleep    2
    select window    url=http://172.16.50.51:9000/portal/confirmedCurrencyList
	Sleep    2
    #Wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[1]/div/div/div/div[1]/label    10
	Reload Page
	wait until element is visible    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button    10
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
	#                       //*[@id="root"]/div/div/section/div/div[1]/div/form/div[2]/div/div/button
    Sleep    5
    ${history_value}    get text    xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div/table/tbody/tr[1]/td[4]/span
    should be equal    ${Randon_value}    ${history_value}

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
