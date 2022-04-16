*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    input text    name:fld_username    TestingWorld
    input text    xpath://input[@placeholder='myusername@gmail.com']    testingworld@gmail.com
    clear element text    name:fld_username
    close browser

