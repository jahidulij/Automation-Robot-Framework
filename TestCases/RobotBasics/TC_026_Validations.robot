*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL1}    https://thetestingworld.com/
${URL2}    https://thetestingworld.com/testings/


*** Test Cases ***
#Should Contain And Shouldn't
#    open browser    ${URL1}    ${Browser}
#    maximize browser window
#    click element    xpath://a[contains(text(),'Login')]
#    page should contain textfield    name:username
#    page should not contain textfield    name:username1
#    input text    name:username    jahid@gmail.com
#
#Validate Checkbox
#    select checkbox    id:remember
#    checkbox should be selected    id:remember
#    click element    id:remember
#    checkbox should not be selected    id:remember

#Validate Text On Element
#    open browser    ${URL2}    ${Browser}
#    maximize browser window
##    element text should be    xpath://div[@id='tab-content1']/p    Register now and kick start your career as a Software Testing Pro!
#    element should contain    xpath://div[@id='tab-content1']/p    Software Testing Pro
#    input text    name:fld_username    Jahid
Validate Title Element Enable Visible
    open browser    ${URL2}    ${Browser}
    maximize browser window
    # Title validator
#    title should be     Login & Sign Up Forms

    # Element Validator
#    element should be enabled    name:fld_username
#    element should be disabled    xpath://body//footer//p

    # Visibility
    element should be visible    name:fld_username

    close browser
