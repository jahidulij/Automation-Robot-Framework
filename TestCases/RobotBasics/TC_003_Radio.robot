*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    select radio button    add_type    home    # Select based on name & value from elements
    select radio button    add_type    office
    close browser

