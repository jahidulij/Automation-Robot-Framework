*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserKeywords.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/

*** Test Cases ***
TC 041 Login Logout Functionality
    open browser    ${URL}    ${Browser}
    maximize browser window
    click element    xpath://a[contains(text(),'Login')]

    ${rows} =    Read Number of Rows    Sheet1
    log to console    ${rows}

    FOR    ${i}    IN RANGE  1    ${rows}+1
        ${username} =    Read Excel Data of Cell    Sheet1    ${i}    1
        ${password} =    Read Excel Data of Cell    Sheet1    ${i}    2
        input text    id:username    ${username}
        Input Text    id:password   ${password}
        Click Element    xpath://button[contains(text(),'Log in')]
        sleep    5 seconds
#        log to console    ${i}
    END



    sleep    5 seconds

    close browser

