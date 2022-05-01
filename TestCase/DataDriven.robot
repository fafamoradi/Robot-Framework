*** settings ***
Documentation    this is a test to find special Products
Resource    ../Resources/FindSpecialProduct.robot
Resource    ../Resources/CommonFunctionality.robot
Force Tags    DataDriven

Suite Setup    CommonFunctionality.Start TestCase
Suite Teardown    CommonFunctionality.Finish TestCase
Test Template    Data Driven


*** variables ***
${verifie_word}    //p[text()='کاغذی']
${PersianWindowCode} =    ${1}
${EnglishWindowCode} =    ${2}


*** test cases ***                  TYPE OF MAG        WINDOW CODE                         VERIFIE WORD
Find Product In Persian Magazine    مجلات داخلی        ${PersianWindowCode}                ${verifie_word}
Find Product In English Magazine    مجلات خارجی        ${EnglishWindowCode}                ${verifie_word}




*** keywords ***
Data Driven
    [Arguments]    ${type_of_magazine}    ${window_code}    ${verifie_word}
#    Set Selenium Implicit Wait    20s
    FindSpecialProduct.Open Category Menu
    FindSpecialProduct.Select Category    ${type_of_magazine}
    FindSpecialProduct.Select Product    ${window_code}
    FindSpecialProduct.Verify Product    ${verifie_word}




