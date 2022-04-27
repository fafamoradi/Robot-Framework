*** settings ***
Documentation    Test For Valid LogIn
Resource    ../Resources/LogInToSystem.robot
Force Tags    Login
#Suite Teardown    Finish TestCase



*** test cases ***
Log In
    Valid LogIn


*** keywords ***
Valid LogIn
    Open Digikala Site
    Go TO LogIn Page
    Input Username
    Input Password
    Verify Log In