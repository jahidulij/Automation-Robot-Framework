*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${PageTitle} =    get title
    log    ${PageTitle}
    ${Speed} =    get selenium speed
    log    ${Speed}
    ${Value} =    get value    xpath://body/div[4]/section[1]/ul[1]/li[1]/div[1]/form[1]/div[1]/input[2]
    log    ${Value}
    ${Text} =    get text    xpath://a[contains(text(),'Read Detail')]
    log    ${Text}


    close browser

