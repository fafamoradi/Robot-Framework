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

Select Seller
    Wait Until Page Contains Element    //*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[10]/div/div[2]/div/div/div[1]
    Run Keyword And Ignore Error    Scroll Element Into View    xpath://*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[10]/div/div[2]/div/div/div[1]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //div[contains(text(),'نوع فروشنده')]
    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[2]/div[2]/div[1]/div[1]/div[8]/div[2]/div[2]/div[1]/div[1]/label[1]/span[1]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[2]/div[2]/div[1]/div[1]/div[8]/div[2]/div[2]/div[1]/div[1]/label[1]/span[1]

Select Filter
    Wait Until Page Contains Element    //div[contains(text(),'پرفروش‌ترین‌')]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //div[contains(text(),'پرفروش‌ترین‌')]

Go To Second Page



Select Product
    Run Keyword And Ignore Error    Scroll Element Into View    xpath://body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[5]/a[1]
    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[5]/a[1]
    Wait Until Keyword Succeeds    3x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[5]/a[1]

Go To Product Page
    @{WindowHandles}=    Get Window Handles
    Switch Window    ${WindowHandles}[1]
#    /TODO uncorrect and must check
    Run Keyword And Ignore Error    Scroll Element Into View    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
    Wait Until Keyword Succeeds    5x   10s    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]

    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]
Verify Add Product To
    Wait Until Keyword Succeeds    5x   10s    Wait Until Page Contains Element    //p[contains(text(),'سبد خرید شما')]
    Wait Until Page Contains Element    //div[contains(text(),'ادامه')]
    Click Element    //div[contains(text(),'ادامه')]

#    /TODO must check again
#    Wait Until Element Is Visible    partial text=انتخاب زمان ارسال
#    Page Should Contains Element    partial text=انتخاب زمان ارسال



    Wait Until Page Contains Element    //span[contains(text(),'انتخاب زمان ارسال')]
    Wait Until Keyword Succeeds    2x   10s    Page Should Contain Element    //span[contains(text(),'انتخاب زمان ارسال')]




//body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[8]/a[1]