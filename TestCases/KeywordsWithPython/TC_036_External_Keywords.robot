*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/External_Keyword_With_Return_Value.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    Concatenate Username and Password    Testing    World
    open browser    ${URL}    ${Browser}
    maximize browser window



    close browser
