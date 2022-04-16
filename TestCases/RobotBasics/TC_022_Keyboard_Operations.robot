*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window
    # Click on Login link
    click link    xpath://a[contains(text(),'Login')]
    press keys    id:username    Test
    press keys    id:password    12345
    press keys    xpath://button[contains(text(),'Log in')]    \\13

    sleep    10 seconds





#    close browser


