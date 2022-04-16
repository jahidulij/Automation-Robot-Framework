*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window
    set selenium timeout    20 seconds
    ${tm} =    get selenium timeout
    log to console    ${tm}
    wait until page contains    Testing
    input text    name:fld_username    Testing
    input text    name:fld_email    testingworld@gmail.com
    input text    name:fld_password    12345

    close browser

