*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL}    ${Browser}
    maximize browser window

    # wait until page contains
#    wait until page contains    VIDEOS1
#    click element    xpath://span[contains(text(),'VIDEOS')]

    # Wait for n amount of time
    set selenium timeout    10 seconds

#    wait until page contains    VIDEOS1
#    click element    xpath://span[contains(text(),'VIDEOS')]

    # Wait until page contain element
#    wait until page contains element    xpath://span[contains(text(),'VIDEOS')]
#    click element    xpath://span[contains(text(),'VIDEOS')]

    # Wait until element contains some text
    wait until element contains    xpath://a[contains(text(),'Login')]    Login
    click link    //a[contains(text(),'Login')]
    sleep    10 seconds





#    close browser


