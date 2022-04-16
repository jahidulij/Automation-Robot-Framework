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
    click button    xpath://body/div[4]/section[1]/ul[1]/li[1]/div[1]/form[1]/div[1]/input[2]
    close browser

