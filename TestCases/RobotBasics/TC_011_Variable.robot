*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Variable test
    ${Var1}=    set variable    HelloWorld!
    log to console    ${Var1}

*** Keywords ***
