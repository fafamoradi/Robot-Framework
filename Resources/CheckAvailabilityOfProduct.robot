*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot


*** variables ***
${nextButton}    xpath=//body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[2]/div[3]/div[1]/*[1]
${categoryMenu}    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
${appleCategory}    //span[contains(text(),'اپل')]
${article}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/article[1]/div[2]
${informButton}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[1]/div[2]/button[1]
${setFilter}    //p[contains(text(),'سیستم پیام شخصی دیجی‌کالا')]
${submit}    //body/div[@id='__next']/div[@id='modal-root']/div[18]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/button[1]
${verifyItem}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[1]/div[2]/button[1]



*** keywords ***
Open Category Menu

    Wait Until Element Is Visible    ${categoryMenu}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${categoryMenu}

Select Category
    Wait Until Page Contains Element    ${appleCategory}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${appleCategory}
    Set Selenium Implicit Wait    20s

    Wait Until Page Contains Element    ${article}
    Wait Until Keyword Succeeds    15x   10s    Scroll Element Into View    ${article}
#    Repeat Keyword 	5 times    Run Keyword And Ignore Error    Scroll Element Into View    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/article[1]/div[2]

//TODO  click on seconed page and go
Go To Second Page
    Wait Until Element Is Visible    ${nextButton}
    Wait Until Element Is Enabled    ${nextButton}
    Wait Until Page Contains Element    ${nextButton}
    Sleep    1s
    Wait Until Keyword Succeeds      2x     10s      Click Element    ${nextButton}


Select Product
    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[80]/a[1]



Go To Product Page
    @{WindowHandles}=    Get Window Handles
    Switch Window    ${WindowHandles}[1]
    Wait Until Page Contains Element    ${informButton}
    Click Element    ${informButton}

    Wait Until Page Contains Element    ${setFilter}
    Click Element    ${setFilter}

    Wait Until Page Contains Element    ${submit}
    Click Element    ${submit}

    Wait Until Page Contains Element    ${verifyItem}
    Page Should Contain Element    ${verifyItem}