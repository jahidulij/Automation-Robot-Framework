*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${default_T} =    get selenium implicit wait
    log to console    ${default_T}
    set selenium implicit wait    20 seconds
    ${default_T} =    get selenium implicit wait
    log to console    ${default_T}
    input text    name:fld_username1    Testing
    input text    name:fld_email    testingworld@gmail.com
    input text    name:fld_password    12345

    close browser

