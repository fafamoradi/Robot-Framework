*** settings ***
Documentation    this is a test for buying a special product
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/LogInToSystem.robot
Resource    ../Resources/Buy.robot
Resource    ../Resources/Variables.robot

Test Setup    Valid LogIn
#Force Tags    LogIn.LogIn
#Test Setup    CommonFunctionality.Start TestCase
#Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Buy Iphone
    Buy.Open Category Menu
    Buy.Select Category
    Buy.Select Seller
    Buy.Select Filter
    Buy.Select Product
    Buy.Go To Product Page
    Buy.Verify Add Product To

*** keywords ***
Valid LogIn
    Open Digikala Site
    Go TO LogIn Page
    Input Username
    Input Password
    Verify Log In