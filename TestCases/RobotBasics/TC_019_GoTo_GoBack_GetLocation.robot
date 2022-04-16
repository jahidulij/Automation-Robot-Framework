*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window

    go to    https://www.google.com
    ${URL1} =    get location
    log to console    ${URL1}
    go back
    ${URL1} =    get location
    log to console    ${URL1}


#    close browser

