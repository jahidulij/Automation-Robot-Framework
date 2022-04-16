*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    Signup

#    close browser

*** Keywords ***
Signup
    input text    name:fld_username    Jahidul Islam
    input text    name:fld_email    jahid@gmail.com
    input text    name:fld_password    12345