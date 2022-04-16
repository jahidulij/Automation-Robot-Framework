*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${URL1}    https://thetestingworld.com/testings/


*** Keywords ***
Start Browser and Maximize
    open browser    ${URL1}    ${Browser}
    maximize browser window

Close Browser Window
    ${Title} =    get title
    log    ${Title}
    close browser