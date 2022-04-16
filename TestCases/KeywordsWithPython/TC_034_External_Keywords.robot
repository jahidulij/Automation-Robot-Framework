*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/External_Keyword_Without_Arg.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Create Folder at Runtime
    open browser    ${URL}    ${Browser}
    maximize browser window



    close browser
