*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC013 For Loop
#    FOR    ${i}    IN RANGE    1    10
#        log    ${i}
#    END

    @{List1} =    create list    Hello     22    23.23  World  Abcd1234
    FOR    ${item}    IN    @{List1}
        log to console    ${item}
    END

*** Keywords ***
