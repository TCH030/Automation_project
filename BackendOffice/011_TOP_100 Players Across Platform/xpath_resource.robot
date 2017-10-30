*** Variables ***

*** Keywords ***
Click Search button
    Click Element    xpath=html/body/div[1]/div/div/section/div/div[1]/div/form/div[6]/div/div/button
	
Click Export button
    #Click Element    xpath=//*[@id="root"]/div/div/section/div/div[2]/div[1]/a/button  
	Click Element     xpath=html/body/div[1]/div/div/section/div/div[2]/div/div/div[1]/a/button
