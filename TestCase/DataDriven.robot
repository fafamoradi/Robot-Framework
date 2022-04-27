*** settings ***
Documentation    this is a test to find special Products
Resource    ../Resources/FindSpecialProduct.robot
Resource    ../Resources/CommonFunctionality.robot
Force Tags    DataDriven

Suite Setup    CommonFunctionality.Start TestCase
Suite Teardown    CommonFunctionality.Finish TestCase
Test Template    Data Driven

*** variables ***
${persian_mag}    فارابی
${english_mag}    BATMAN

*** test cases ***                  TYPE OF MAG         MAG NAME         VERIFIE WORD
Find Product In Persian Magazine    مجلات داخلی         ${persian_mag}   ${persian_mag}
Find Product In English Magazine    مجلات خارجی         ${english_mag}   ${english_mag}

*** keywords ***
Data Driven
    [Arguments]    ${type_of_magazine}    ${magazine_name}    ${verifie_word}
#    Set Selenium Implicit Wait    20s
    FindSpecialProduct.Open Category Menu
    FindSpecialProduct.Select Category    ${type_of_magazine}
    FindSpecialProduct.Select Product    ${magazine_name}
    FindSpecialProduct.Verify Product    ${verifie_word}




