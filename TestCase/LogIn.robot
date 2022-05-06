*** settings ***
Documentation    Test For Valid LogIn
Resource    ../Resources/LogInToDigikala.robot
Resource    ../Resources/CommonFunctionality.robot

Force Tags    Login
Test Teardown    CommonFunctionality.Finish TestCase


*** test cases ***
Log In
    Valid LogIn

