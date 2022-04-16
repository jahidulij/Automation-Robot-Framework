*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/Locators.py
#Resource    ../Resources/External_Keyword_With_Return_Value.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
#    Concatenate Username and Password    Testing    World
    open browser    ${URL}    ${Browser}
    maximize browser window

    ${username} =    Read Element Locator K    Registration.username_textbox_name
    ${email} =    Read Element Locator K    Registration.email_textbox_name
    ${password} =    Read Element Locator K    Registration.password_textbox_name
    input text    name:${username}    Testing
    input text    name:${email}    jahid@gmail.com
    input text    name:${password}    12345


    close browser
*** Keywords ***
Read Element Locator K
    [Arguments]    ${JsonPath}
    ${result} =    read_locator_from_json    ${JsonPath}
    [Return]    ${result}
