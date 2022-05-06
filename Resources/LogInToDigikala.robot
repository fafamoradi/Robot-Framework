*** settings ***
Library    SeleniumLibrary
Documentation    a test to log in to Digikala
Resource    Variables.robot
Resource    CommonFunctionality.robot


*** variables ***
${VerifiedName}    zahra moradi
${logInButton}    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/a/div[2]
${usernameField}    //*[@name="username"]
${usernameSubmitButton}    //div[contains(text(),'ورود')]
${passwordSubmitButton}    //div[contains(text(),'تایید')]
${passwordField}    //*[@id="__next"]/main/div[2]/form/label/div/div[1]/input
${accountField}    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/div/div/div/div[2]/div[1]/div[1]


*** keywords ***
Valid LogIn
#Start TestCase
    Set Selenium Speed    ${SPEED}
    Set Selenium Timeout    ${TIMEOUT}
    Set Selenium Implicit Wait    ${WAIT}
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window


#Go TO LogIn Page
    Set Selenium Implicit Wait    20s
    Wait Until Element Is Visible    ${logInButton}
    Click Element    ${LogInButton}

#Input Username
    Wait Until Page Contains Element    name=username
    Input Text    ${usernameField}    ${USERNAME}
    Wait Until Page Contains Element    ${usernameSubmitButton}
    Click Element    ${usernameSubmitButton}

#Input Password
    Wait Until Page Contains Element    name:password
    Input Text    ${passwordField}    ${PASSWORD}
    Wait Until Page Contains Element    ${passwordSubmitButton}
    Click Element    ${passwordSubmitButton}

#Verify Log In
    Wait until Page Contains Element    ${accountField}
    Click Element    ${accountField}
    Page Should Contain    ${VerifiedName}

