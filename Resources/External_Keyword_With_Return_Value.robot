*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/user_keywords.py

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

Concatenate Username and Password
    [Arguments]    ${username}    ${password}
    ${result} =    concatenate_two_values    ${username}    ${password}
    log    ${result}


