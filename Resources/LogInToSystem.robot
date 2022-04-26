*** settings ***
Library    SeleniumLibrary
Documentation    a test to log in to Digikala
Resource    Variables.robot
Resource    CommonFunctionality.robot




*** variables ***
${VerifiedName}    fatemeh moradi



*** keywords ***
Open Digikala Site
    Set Selenium Speed    ${SPEED}
    Set Selenium Timeout    ${TIMEOUT}
    Set Selenium Implicit Wait    ${WAIT}
    CommonFunctionality.Start TestCase

Go TO LogIn Page
    Wait Until Element Is Visible    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/a/div[2]
    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/a/div[2]

Input Username
    Wait Until Page Contains Element    name=username
    Input Text    //*[@name="username"]    ${USERNAME}
    Click Element    //*[@id="__next"]/main/div[2]/form/button/div[2]

Input Password
    Wait Until Page Contains Element    name:password
    Input Text    //*[@id="__next"]/main/div[2]/form/label/div/div[1]/input    ${PASSWORD}
    Click Element    //*[@id="__next"]/main/div[2]/form/button[2]/div[2]

Verify Log In
    Wait until Page Contains Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/div[1]/div[1]
    Click Element    //*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/div[1]/div[1]
    Page Should Contain    ${VerifiedName}

