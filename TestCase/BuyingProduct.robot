*** settings ***
Documentation    this is a test for buying a special product
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/LogInToSystem.robot
Resource    ../TestCase/LogIn.robot
Resource    ../Resources/Buy.robot


Force Tags    LogIn.LogIn

Test Setup    Valid LogIn
#Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Buy Iphone
    Buy.Open Category Menu
    Buy.Select Category
    Buy.Select Filter


*** keywords ***
Valid LogIn
    Open Digikala Site
    Go TO LogIn Page
    Input Username
    Input Password
    Verify Log In