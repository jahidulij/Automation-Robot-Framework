*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keyword_Without_Arg.robot
Documentation    This is a test documentation which will show in suite level
Test Setup    Start Browser and Maximize
Test Teardown    Close Browser Window
Default Tags    DFLT
Force Tags    ALL_TC

*** Variables ***
#${URL}    https://thetestingworld.com/testings/
#${Browser}    Chrome


*** Test Cases ***
Setup and Teardown exercise 1
    [Tags]    Smoke
    input text    name:fld_username    jahid
    input text    name:fld_email    jahid@gmail.com
    input text    name:fld_password    12345

Setup and Teardown exercise 2
    [Tags]    Smoke    Sanity
    select radio button    add_type    office

Setup and Teardown exercise 3
    [Documentation]    This will be executed as default tag
    select radio button    add_type    office

Setup and Teardown exercise 4
    [Tags]    Regression
    select radio button    add_type    office


#    close browser
