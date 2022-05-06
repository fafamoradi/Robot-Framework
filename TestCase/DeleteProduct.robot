*** settings ***
Documentation    this is a test for buying a special product
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/Delete.robot
Resource    ../Resources/Variables.robot


Test Setup    CommonFunctionality.Start TestCase
Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Delete Iphone
    Open Category Menu
    Select Category
    Select Product
    Go To Product Page
    Add To Basket
    View Basket
    Delete Product
    Verify



