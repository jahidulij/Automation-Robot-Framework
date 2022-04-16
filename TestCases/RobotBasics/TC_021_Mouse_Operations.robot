*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window
    # Right click on Videos
#    open context menu    xpath://span[contains(text(),'VIDEOS')]
    # Double click on Login
#    double click element    xpath://a[contains(text(),'Login')]
    # Mouse Down & Up
#    mouse down    xpath://a[contains(text(),'Login')]
#    mouse up    xpath://a[contains(text(),'Login')]
    # Mouse Over
    mouse over    xpath://span[contains(text(),'VIDEOS')]

    sleep    10 seconds





#    close browser


