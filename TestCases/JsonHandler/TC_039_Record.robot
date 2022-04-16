*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
Robotcorder Test Cases
    Open Browser    https://thetestingworld.com/testings/    Chrome
    Input Text    //input[@name="fld_username"]    Jahidul
    Input Text    //input[@name="fld_email"]    jahid@gmail.com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
    Click Element    id:datepicker
    Click Link    xpath=(//a[@href="#"])[8]
    Input Text    //input[@name="phone"]    1234567890
    Input Text    //input[@name="address"]    Canada
    Click Element    xpath=(//input[@name="add_type"])[2]
    Select From List By Value    //select[@name="sex"]    1
    Select From List By Value    //select[@name="country"]    18
    Input Text    //input[@name="zip"]    12345
    Click Element    //input[@name="terms"]

