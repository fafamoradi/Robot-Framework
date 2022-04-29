*** settings ***
Library    SeleniumLibrary
Resource    Variables.robot

*** keywords ***

Start TestCase
    Set Selenium Speed    ${SPEED}
    Set Selenium Timeout    ${TIMEOUT}
    Set Selenium Implicit Wait    ${WAIT}
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window

Finish TestCase 
    Close Browser