*** settings ***
Library    SeleniumLibrary
Documentation    Find a product with use filter and category
Resource    ../Resources/CommonFunctionality.robot





*** keywords ***
Open Category Menu
    Wait Until Page Contains Element    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span
    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/span

Select Category
    Wait Until Page Contains Element    //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/div/div/div[2]/div[1]/div[1]/ul/a[8]/span
    Click Element    xpath=//*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div/div/div/div[2]/div[1]/div[1]/ul/a[8]/span

Select Filter
    Wait Until Page Contains Element    //*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[10]/div/div[2]/div/div/div[1]
    Run Keyword And Ignore Error    Scroll Element Into View    xpath://*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[10]/div/div[2]/div/div/div[1]
    Wait Until Element Is Enabled    //*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[8]/div/div[2]/div/div/div[1]
    Click Element    xpath=//*[@id="plpLayoutContainer"]/section[2]/div[2]/div/div[1]/div[8]/div/div[2]/div/div/div[1]

    Wait Until Keyword Succeeds  Page Should Contain Element  xpath=//*[@id="plpLayoutContainer"]/section[1]/div[1]/div/div[2]/div[1]
#    Wait Until Page Contains Element    xpath=//*[@id="plpLayoutContainer"]/section[1]/div[1]/div/div[2]/div[1]
    Click Element    xpath=//*[@id="plpLayoutContainer"]/section[1]/div[1]/div/div[2]/div[1]