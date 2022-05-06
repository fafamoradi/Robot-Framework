*** settings ***
Documentation    This is a test to check the capabilities of a product
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/CheckAvailabilityOfProduct.robot
Resource    ../Resources/LogInToDigikala.robot
Resource    ../Resources/Variables.robot



#Force Tags    LogIn.LogIn
Suite Setup    Valid LogIn

#Test Setup    CommonFunctionality.Start TestCase
#Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Buy Product
    Open Category Menu
    Select Category
#    Go To Second Page
    Select Product
    Go To Product Page

