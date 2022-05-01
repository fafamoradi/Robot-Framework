*** settings ***
Documentation    This is a test to check the capabilities of a product
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/CheckAvailabilityOfProduct.robot
Resource    ../Resources/Variables.robot



#Force Tags    LogIn.LogIn

Test Setup    CommonFunctionality.Start TestCase
#Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Buy Product
    Open Category Menu
    Select Category
    Go To Second Page
    Select Product
#    Verify Add Product To

*** keywords ***
Valid LogIn
    Open Digikala Site
    Go TO LogIn Page
    Input Username
    Input Password
    Verify Log In
