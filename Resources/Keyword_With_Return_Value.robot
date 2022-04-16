*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#${UserURL}    https://thetestingworld.com/testings/
#${InputBrowser}    Chrome

*** Keywords ***
Open Browser Maximize and Return
    [Documentation]    This will start browser and maximize window
#    [Timeout]    5s
    [Arguments]    ${UserURL}    ${InputBrowser}
    open browser    ${UserURL}    ${InputBrowser}
    maximize browser window
    ${Title} =    get title
    [Return]    ${Title}



