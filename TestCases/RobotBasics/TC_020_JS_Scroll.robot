*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window
    execute javascript    window.scrollTo(0, 1000)
    sleep    10 seconds




#    close browser


