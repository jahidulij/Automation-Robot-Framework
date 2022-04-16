*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window

    input text    name:fld_username    Testing
    input text    name:fld_email    testingworld@gmail.com
    input text    name:fld_password    12345

    capture page screenshot    ./Snapshots/TC_018.png

    close browser

