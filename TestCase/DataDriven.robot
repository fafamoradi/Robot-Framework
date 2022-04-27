*** settings ***
Documentation    this is a test to find special Products
Resource    ../Resources/FindSpecialProduct.robot
Resource    ../Resources/CommonFunctionality.robot

Force Tags    Login
Suite Setup    Start TestCase
#Suite Teardown    Finish TestCase



*** test cases ***
Data Driven
    Open Category Menu
    Select Category
    Scroll



