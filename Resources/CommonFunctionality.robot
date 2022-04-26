*** settings ***
Library    SeleniumLibrary
Resource    Variables.robot

*** keywords ***

Start TestCase
    Open Browser  git  ${URL}    ${BROWSER}    options=add_argument("--ignore-certificate-errors")


Finish TestCase 
    Close Browser