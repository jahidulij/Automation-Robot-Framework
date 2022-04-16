*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${UserURL}    ${InputBrowser}
    open browser    ${UserURL}    ${InputBrowser}
    maximize browser window
