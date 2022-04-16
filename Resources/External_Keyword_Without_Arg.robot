*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/user_keywords.py


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

Create Folder at Runtime
    create_folder
    create_sub_folder
    log    "Task done successfully."
