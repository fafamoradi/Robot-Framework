*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot


*** variables ***
${categoryMenu}    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
${stationery}    //header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]
${magazin&book}    //p[contains(text(),'مجلات، نقشه و نشانگر کتاب')]
${magazin}    //div[contains(text(),'مجلات')]
${coverType}    xpath=//div[contains(text(),'نوع جلد')]
${paper}    //div[contains(text(),'کاغذی')]
${firstProduct}    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[1]/a[1]


*** keywords ***
Open Category Menu
    Wait Until Page Contains Element    ${categoryMenu}
    Click Element    ${categoryMenu}

Select Category
    [Arguments]    ${type_of_magazine}
    Wait Until Page Contains Element    ${stationery}
    Wait Until Keyword Succeeds    3x   10s    Click Element    ${stationery}
    Run Keyword And Ignore Error    scroll element into view    //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[2]/div[2]/span[7]/a/p
    Wait Until Page Contains Element    ${magazin&book}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${magazin&book}
    Wait Until Page Contains Element    ${magazin}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${magazin}
    Wait Until Page Contains Element    //div[contains(text(),'${typeOfMagazine}')]
    Click Element    xpath=//div[contains(text(),'${typeOfMagazine}')]
    Run Keyword And Ignore Error    Scroll Element Into View    ${coverType}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${coverType}
    Run Keyword And Ignore Error    Scroll Element Into View    ${paper}
    Wait Until Keyword Succeeds    5x   10s    Click Element    ${paper}

Select Product
    Wait Until Keyword Succeeds    3x   10s     Element Should Be Visible    ${firstProduct}
    Wait Until Keyword Succeeds    3x   10s    Click Element    ${firstProduct}

Go To Product Page
    [Arguments]    ${window_code}
    @{WindowHandles}=    Get Window Handles
    Switch Window    ${WindowHandles}[${window_code}]

Verify Product
    [Arguments]    ${verifie_word}
    Wait Until Keyword Succeeds    3x   10s     Element Should Be Visible    ${verifie_word}
    Page Should Contain Element    ${verifie_word}