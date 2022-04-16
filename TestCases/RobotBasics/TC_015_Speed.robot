*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    ${speed} =    get selenium speed
    log to console    ${speed}
    maximize browser window
    sleep    5 seconds
#    set selenium speed    2 seconds
    input text    name:fld_username    TestingWorld
    input text    name:fld_email    testingworld@gmail.com
    input text    name:fld_password    12345
    ${speed} =    get selenium speed
    log to console    ${speed}
    close browser

