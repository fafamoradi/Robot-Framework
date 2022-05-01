*** settings ***
Documentation    this is a test for buying a special product
Resource    ../Resources/CommonFunctionality.robot
Resource    ../Resources/Buy.robot
Resource    ../Resources/Variables.robot

#Force Tags    LogIn.LogIn
Test Setup    CommonFunctionality.Start TestCase
#Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Buy Iphone
    Buy.Open Category Menu
    Buy.Select Category
    Buy.Select Product
    Buy.Go To Product Page
    Buy.Add To Basket
    Buy.View Basket
    Buy.Delete Product



