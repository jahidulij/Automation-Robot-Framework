*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/External_Keyword_With_Arg.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Create Folder at Runtime with Args    Folder    SubFolder
    open browser    ${URL}    ${Browser}
    maximize browser window



    close browser
