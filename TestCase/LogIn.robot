*** settings ***
Documentation    Test For Valid LogIn
Resource    ../Resources/LogInToSystem.robot
Force Tags    Login



*** test cases ***
Valid LogIn
    Open Digikala Site
    Go TO LogIn Page
    Input Username
    Input Password
    Verify Log In
