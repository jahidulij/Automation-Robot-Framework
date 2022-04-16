*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keyword_Without_Arg.robot
Resource    ../Resources/Keyword_With_Arg.robot
Resource    ../Resources/Keyword_With_Return_Value.robot


*** Variables ***

*** Test Cases ***
#Keyword Without Arguments
#    Start Browser and Maximize
#    input text    name:fld_username    Hello World!

#Keyword With Arguments
#    Open Browser and Maximize    https://thetestingworld.com/testings/    Chrome
#    input text    name:fld_username    Hello World!

Keyword With Return Value
    ${Res} =    Open Browser Maximize and Return    https://thetestingworld.com/testings/    Chrome
    LOG    ${Res}
    input text    name:fld_username    ${Res}


#    close browser
