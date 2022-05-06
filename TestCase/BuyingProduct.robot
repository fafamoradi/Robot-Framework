*** settings ***
Documentation    this is a test for buying a special product
Resource    ../Resources/Variables.robot
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/LogInToDigikala.robot
Resource    ../Resources/Buy.robot
Force Tags    LogIn

Test Setup    LogInToDigikala.Valid LogIn
Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Buy Iphone
    Open Category Menu
    Select Category
    Select Seller
    Select Filter
    Select Product
    Go To Product Page
    Add To Basket
    View Basket
    Verify Add Product
