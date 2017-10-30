*** Variables ***

*** Keywords ***
Click Search by Date button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div/div/div[4]/div/div/button[1]
	
Click Export button
    #Click Element    xpath=//*[@id="root"]/div/div/section/div/div[2]/div[1]/a/button  
	Click Element     xpath=html/body/div[1]/div/div/section/div/div[2]/div[1]/a/button
