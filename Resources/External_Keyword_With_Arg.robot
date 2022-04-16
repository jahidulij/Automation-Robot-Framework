*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/user_keywords.py

*** Variables ***


*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${UserURL}    ${InputBrowser}
    open browser    ${UserURL}    ${InputBrowser}
    maximize browser window

Create Folder at Runtime with Args
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder_inp    ${foldername}
    create_sub_folder_inp    ${subfoldername}
    log    "Task complete successfully"
