*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL1}    https://robotframework.org/

*** Test Cases ***
Robot Selenium Speed
    open browser    ${URL1}    ${Browser}
    maximize browser window
    click element    //a[contains(text(),'robocon.io')]
    # Change the tab
#    switch window    Robot Framework
#    ${url01} =    get location
#    log to console    ${url01}
#    switch window    RoboCon 2022
#    ${url02} =    get location
#    log to console    ${url02}

    # Window handler
    @{list1} =    get window handles
    FOR    ${win}    IN    @{list1}
        switch window    ${win}
        ${url} =    get location
        log to console    ${url}
    END


    close browser
