*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot



#*** test cases ***
#Just Test
#    Set Selenium Timeout    60s
#    Set Selenium Implicit Wait    20s
#    Wait Until Page Contains Element    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
#    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
#
#    Wait Until Page Contains Element    //header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]
#    Click Element    xpath=//header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]
##    Execute Javascript    window.scrollTo(0,900)
##    Run Keyword And Ignore Error    Scroll Element Into View    //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[3]/div[2]/span[2]/a/p
#
#    Wait Until Page Contains Element    //*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[3]/div[2]/span[2]/a/p
#    Click Element    xpath=//*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[3]/div[2]/span[2]/a/p
##
##    Wait Until Page Contains Element    //div[contains(text(),'مجلات')]
##    Click Element    xpath=//div[contains(text(),'مجلات')]
##    Wait Until Page Contains Element    //div[contains(text(),'مجلات داخلی')]
##    Click Element    xpath=//div[contains(text(),'مجلات داخلی')]
##
##    Run Keyword And Ignore Error    Scroll Element Into View    //div[contains(text(),'سال انتشار')]
##    Click Element    xpath=//div[contains(text(),'نوع جلد')]
##
##    Select Checkbox    xpath=//div[contains(text(),'کاغذی')]




*** keywords ***
Open Category Menu
    Wait Until Page Contains Element    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span

Select Category
    Wait Until Page Contains Element    //header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]
    Click Element    xpath=//header/nav[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[8]/a[1]/p[1]

Scroll
#    execute javascript    window.scrollTo(0,1000)
    Run Keyword And Ignore Error    scroll element into view    //body/div[@id='__next']/div[1]/div[3]/div[3]/div[1]/div[2]/div[2]/span[7]/a[1]/p[1]








