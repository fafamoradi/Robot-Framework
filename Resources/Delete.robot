*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot


*** variables ***
${categoryMenu}    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
${appleCategory}    //span[contains(text(),'اپل')]
${iPhone}    xpath://body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[5]/a[1]
${addToBasketButton}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
${deleteButton}    css:#__next > div.h-100.d-flex.flex-column.bg-000.ai-center > div.grow-1.bg-000.d-flex.flex-column.w-100.ai-center.shrink-0 > div.grow-1.bg-000.d-flex.flex-column.w-100.ai-center.BaseLayoutDesktop_BaseLayoutDesktop__content__qBCkO.container-xl-w.px-6 > div:nth-child(2) > div > ul.pt-3-lg > li > div:nth-child(1) > div > section > div > div > div.pos-relative.br-list-vertical-no-padding-200 > div.bg-000.py-4.mx-5.pr-4-lg > div.cartItem_CartItem__grid__Kr1In > div:nth-child(3) > div > button:nth-child(3) > div > svg
${emptyBaskeTitle}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[1]/ul[2]/li[1]/div[1]/div[1]/section[1]/div[1]/div[1]/p[1]


*** keywords ***
Open Category Menu
    Wait Until Element Is Visible    ${categoryMenu}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${categoryMenu}

Select Category
    Wait Until Page Contains Element    ${appleCategory}
    Wait Until Keyword Succeeds    5x   10s    Click Element     ${appleCategory}


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
    Wait Until Page Contains Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/div[2]/div[1]/a[1]/p[1]

Delete Product
    Wait Until Element Is Visible    ${deleteButton}
    Wait Until Element Is Enabled    ${deleteButton}
    Wait Until Page Contains Element    ${deleteButton}
    Click Element    ${deleteButton}

Verify
    Wait Until Element Is Visible    ${emptyBaskeTitle}
    Page Should Contain Element    ${emptyBaskeTitle}
