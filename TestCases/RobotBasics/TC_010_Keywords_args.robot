*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    Signup    Jahidul Islam    jahid@gmail.com    123456

#    close browser

*** Keywords ***
Signup
    [Arguments]    ${username}    ${email}    ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name:fld_password    ${password}