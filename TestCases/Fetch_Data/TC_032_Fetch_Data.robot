*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    open browser    ${URL}    ${Browser}
    maximize browser window
    select from list by index    name:sex    1
#    ${Val1} =    get selected list value    name:sex
    ${Val1} =    get selected list label    name:sex
    log    ${Val1}
    ${AllLabels} =    get list items    name:sex
    log    ${AllLabels}



    close browser

