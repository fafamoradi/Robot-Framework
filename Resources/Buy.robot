*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot


*** variables ***
${categoryMenu}    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
${appleCategory}    //span[contains(text(),'اپل')]
${communicationNetworks}    //*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[10]/div/div[2]/div/div/div[1]
${selectSellerType}    //div[contains(text(),'نوع فروشنده')]
${digikalaStore}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[2]/div[2]/div[1]/div[1]/div[8]/div[2]/div[2]/div[1]/div[1]/label[1]/span[1]
${bestselling}    //div[contains(text(),'پرفروش‌ترین‌')]
${iPhone}    xpath://body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[5]/a[1]
${addToBasketButton}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
${viewBasketButton}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]
${yourBasket}    //p[contains(text(),'سبد خرید شما')]
${Continue}    //div[contains(text(),'ادامه')]
${selectSendingTime}    //span[contains(text(),'انتخاب زمان ارسال')]



*** keywords ***
Open Category Menu

    Wait Until Element Is Visible    ${categoryMenu}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${categoryMenu}

Select Category
    Wait Until Page Contains Element    ${appleCategory}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${appleCategory}

Select Seller
    Wait Until Page Contains Element    ${communicationNetworks}
    Run Keyword And Ignore Error    Scroll Element Into View    ${communicationNetworks}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${selectSellerType}
    Wait Until Page Contains Element    ${digikalaStore}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${digikalaStore}

Select Filter
    Wait Until Page Contains Element    ${bestselling}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${bestselling}

Select Product
    Run Keyword And Ignore Error    Scroll Element Into View    ${iPhone}
    Wait Until Page Contains Element    ${iPhone}
    Wait Until Keyword Succeeds    3x   10s    Click Element    ${iPhone}

Go To Product Page
    @{WindowHandles}=    Get Window Handles
    Switch Window    ${WindowHandles}[1]


Add To Basket
    Run Keyword And Ignore Error    Scroll Element Into View    ${addToBasketButton}
    Wait Until Keyword Succeeds    5x   10s    Wait Until Page Contains Element    ${addToBasketButton}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${addToBasketButton}

View Basket
    Wait Until Page Contains Element    ${viewBasketButton}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${viewBasketButton}

Verify Add Product
    Wait Until Keyword Succeeds    5x   10s    Wait Until Page Contains Element    ${yourBasket}
    Wait Until Page Contains Element    ${Continue}
    Click Element    ${Continue}
    Wait Until Page Contains Element    ${selectSendingTime}
    Wait Until Keyword Succeeds    2x   10s    Page Should Contain Element    ${selectSendingTime}