*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keyword_Without_Arg.robot
Resource    ../Resources/External_Keyword_With_Arg.robot
Resource    ../Resources/External_Keyword_With_Return_Value.robot

*** Variables ***

*** Test Cases ***
Test Cases in BDD Format
    Given Start Browser and Maximize
    When Create Folder at Runtime with Args    ABCD    XYZM
    Then Concatenate Username and Password    Testing    World




    close browser

