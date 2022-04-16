*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keyword_With_Return_Value.robot
Documentation    This is a test documentation which will show in suite level
#Test Timeout    20s

*** Variables ***
${URL}    https://thetestingworld.com/testings/
${Browser}    Chrome


*** Test Cases ***
Documentation and Timeout Exercise
    [Documentation]    This Test case will check registration functionality
    [Timeout]    1s
    ${Res} =    Open Browser Maximize and Return    ${URL}    ${Browser}
    log    {Res}
    input text    name:fld_username    ${Res}

    close browser