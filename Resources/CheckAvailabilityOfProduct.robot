*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot





*** keywords ***
Open Category Menu

    Wait Until Element Is Visible    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
    Wait Until Keyword Succeeds    5x   10s    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span

Select Category
    Wait Until Page Contains Element    //span[contains(text(),'اپل')]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //span[contains(text(),'اپل')]
    Set Selenium Implicit Wait    20s

//TODO  click on seconed page and go
Go To Second Page
    Repeat Keyword 	15 times 	Run Keyword And Ignore Error    Scroll Element Into View    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/article[1]/div[1]

Select Product
#    Wait Until Element Is Visible    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[2]/div[3]/div[1]/*[1]
##    Wait Until Keyword Succeeds    3x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[5]/a[1]
##    Page Should Contain Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[2]/div[2]/span[4]
    Wait Until Element Is Visible    //span[contains(text(),'بعدی')]
    Wait Until Element Is Enabled    //span[contains(text(),'بعدی')]
    Sleep    5s
    Click Element    //span[contains(text(),'بعدی')]


Go To Product Page
    @{WindowHandles}=    Get Window Handles
    Switch Window    ${WindowHandles}[1]
#    /TODO uncorrect and must check

Add To Basket
    Run Keyword And Ignore Error    Scroll Element Into View    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
    Wait Until Keyword Succeeds    5x   10s    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]

View Basket
    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]

Delete Product
    Wait Until Page Contains Element    Click Element    /html[1]/body[1]/div[1]/div[1]/div[3]/div[3]/div[2]/div[1]/ul[2]/li[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/button[2]/div[1]/*[name()='svg'][1]/*[name()='use'][1]
    Click Element  /html[1]/body[1]/div[1]/div[1]/div[3]/div[3]/div[2]/div[1]/ul[2]/li[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[1]/button[2]/div[1]/*[name()='svg'][1]/*[name()='use'][1]





Verify Add Product


