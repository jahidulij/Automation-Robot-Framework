*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL1}    http://www.thetestingworld.com/
${URL2}    https://www.google.com/

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL1}    Chrome
    maximize browser window
    open browser    ${URL2}    Firefox
#    maximize browser window

    switch browser    1
    ${url01} =    get location
    log to console    ${url01}
    click element    xpath://a[contains(text(),'Login')]
    switch browser    2
    ${url02} =    get location
    log to console    ${url02}
    input text    name:q    Hello World


    close all browsers


