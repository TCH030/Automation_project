*** Settings ***
Test Teardown     Close ALL Browsers
Resource          ../Login.robot

*** Variables ***
${Accountname}    tsaic30
${Email}          tbe@gen-game.com
${CC}             cathie.k@gen-game.com

*** Test Cases ***
Login
    Remove file    C:\\Users\\${Accountname}\\Downloads\\*.html    #***** remove all html file
	Open Jenkins
    wait until element is visible    xpath=html/body/div[4]/div[2]/table[2]/tbody/tr/td[2]/table/tbody/tr[2]/td[1]    10
    ${total_case}    get text    xpath=html/body/div[4]/div[2]/table[2]/tbody/tr/td[2]/table/tbody/tr[2]/td[1]
    ${total_passed}    get text    xpath=html/body/div[4]/div[2]/table[2]/tbody/tr/td[2]/table/tbody/tr[2]/td[3]
    ${total_filed}    get text    xpath=html/body/div[4]/div[2]/table[2]/tbody/tr/td[2]/table/tbody/tr[2]/td[2]/span
    ${total_percentage}    get text    xpath=html/body/div[4]/div[2]/table[2]/tbody/tr/td[2]/table/tbody/tr[2]/td[4]
    Mouse Click    strButton=RIGHT    nX=579    nY=770
    Sleep    1
    Mouse Click    strButton=left    nX=646    nY=873
    Sleep    1
    Mouse Click    strButton=left    nX=969    nY=773
    Sleep    1
    Mouse Click    strButton=RIGHT    nX=556    nY=790
    Sleep    1
    Mouse Click    strButton=left    nX=636    nY=888
    Sleep    1
    Mouse Click    strButton=left    nX=976    nY=770
    Sleep    1
    Close Browser
    Open gmail
    wait until element is visible    xpath=html/body/div[7]/div[3]/div/div[2]/div[1]/div[1]/div[1]/div[2]/div/div/div/div[1]/div/div    10
    Click Element    xpath=html/body/div[7]/div[3]/div/div[2]/div[1]/div[1]/div[1]/div[2]/div/div/div/div[1]/div/div
    Mouse move    nX=1107    nY=925
    mouse click    strButton=LEFT
    Sleep    5
    Mouse move    nX=979    nY=766
    Sleep    5
    Mouse move    nX=743    nY=545
    sleep    5
    mouse click    strButton=LEFT
    sleep    5
    Mouse move    nX=206    nY=209
    Sleep    5
    mouse click    strButton=LEFT
    Sleep    2
    send    strSendText=${Email}
    Sleep    2
    input CC mail list
    Sleep    2
    Mouse Click    strButton=LEFT    nX=266    nY=313
	Sleep    1
	Mouse Click    strButton=LEFT    nX=270    nY=442
    Sleep    2
    send    ${total_case}
    sleep    2
    mouse move    nX=307    nY=442
    Sleep    2
    Mouse Click    strButton=LEFT
    Sleep    2
    Send    ${total_filed}
    mouse move    nX=354    nY=442
    Sleep    2
    Mouse Click    strButton=LEFT
    Sleep    2
    Send    ${total_passed}
    Sleep    2
    mouse move    nX=402    nY=440
    Sleep    2
    Mouse Click    strButton=LEFT
    Sleep    2
    Send    ${total_percentage}
    Sleep    2
    Mouse move    nX=270    nY=467
    Sleep    2
    Mouse Click    strButton=LEFT
    Sleep    2
    send    ${total_case}
    sleep    2
    mouse move    nX=307    nY=467
    Sleep    2
    Mouse Click    strButton=LEFT
    Sleep    2
    Send    ${total_filed}
    mouse move    nX=354    nY=467
    Sleep    2
    Mouse Click    strButton=LEFT
    Sleep    2
    Send    ${total_passed}
    Sleep    2
    mouse move    nX=404    nY=467
    Sleep    1
    Mouse Click    strButton=LEFT
    Sleep    1
    Send    ${total_percentage}
    mouse click    strButton=left    nX=298    nY=928
    sleep    1
    mouse click    strButton=left    nX=765    nY=293
    send    "log.html""report.html"
    Mouse click    strButton=left    nX=974    nY=768
    Sleep    15
    Remove file    C:\\Users\\${Accountname}\\Downloads\\report.html
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\report.html    30
    Remove file    C:\\Users\\${Accountname}\\Downloads\\log.html
    Wait Until Removed    C:\\Users\\${Accountname}\\Downloads\\log.html    30
    mouse click    strButton=Left    nX=200    nY=922
    sleep    1

*** keyword ***
input CC mail list
    Mouse click    strButton=LEFT    nX=1069    nY=205
    Sleep    2
    send    cathie.k@gen-game.com
    send    ,
    Sleep    2
    send    tony.c@gen-game.com
    sleep    1
    send    ,
    sleep    2
    Send    will.y@gen-game.com
    Sleep    2
    send    ,
