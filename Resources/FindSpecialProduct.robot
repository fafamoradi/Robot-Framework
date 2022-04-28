*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot





*** keywords ***
Open Category Menu
    Wait Until Page Contains Element    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span

Select Category
    [Arguments]    ${type_of_magazine}
    Wait Until Page Contains Element    //header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]
    Wait Until Keyword Succeeds    3x   10s    Click Element    xpath=//header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]


    Set Selenium Implicit Wait    30s
    Run Keyword And Ignore Error    scroll element into view    //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[2]/div[2]/span[7]/a/p

    Wait Until Page Contains Element    //p[contains(text(),'مجلات، نقشه و نشانگر کتاب')]
    Wait Until Keyword Succeeds    5x   10s    Click Element    xpath=//p[contains(text(),'مجلات، نقشه و نشانگر کتاب')]

    Wait Until Page Contains Element    //div[contains(text(),'مجلات')]
    Wait Until Keyword Succeeds    5x   10s    Click Element    //div[contains(text(),'مجلات')]


    Wait Until Page Contains Element    //div[contains(text(),'${typeOfMagazine}')]
    Click Element    xpath=//div[contains(text(),'${typeOfMagazine}')]

    Run Keyword And Ignore Error    Scroll Element Into View    xpath=//div[contains(text(),'نوع جلد')]
    Wait Until Keyword Succeeds    5x   10s    Click Element    xpath=//div[contains(text(),'نوع جلد')]
    Run Keyword And Ignore Error    Scroll Element Into View    //div[contains(text(),'کاغذی')]

    Wait Until Keyword Succeeds    5x   10s    Click Element    xpath=//div[contains(text(),'کاغذی')]


Select Product
    Wait Until Keyword Succeeds    3x   10s     Element Should Be Visible    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[1]/a[1]
    Wait Until Keyword Succeeds    3x   10s    Click Element    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]/div[1]/a[1]

    @{WindowHandles}=    Get Window Handles
    Switch Window    ${WindowHandles}[1]


Verify Product
    [Arguments]    ${verifie_word}
    Wait Until Keyword Succeeds    3x   10s     Element Should Be Visible    ${verifie_word}
    Page Should Contain Element    ${verifie_word}


