*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${ActualURL} =    get location
    log    ${ActualURL}
    ${pageHTML} =    get source
    log    ${pageHTML}
    ${Attr} =    get element attribute    name:fld_username    class
    log    ${Attr}
    ${Cnt} =    get element count    class:field
    log    ${Cnt}



    close browser
