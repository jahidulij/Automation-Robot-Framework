*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
#    set selenium speed    2seconds
    select from list by index    name:sex    2
    select from list by value    name:sex    1
    select from list by label    name:sex    Female
    close browser

