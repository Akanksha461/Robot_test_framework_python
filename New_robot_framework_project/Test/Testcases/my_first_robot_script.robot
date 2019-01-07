*** Settings ***
Documentation    Testing Facebook Login
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/base.robot
Variables           ../Variable/variable.py
Variables           ../Locators/locators.py

*** Test Cases ***

TestCase1:Verfiy_home_page_title    #Test title
    [Documentation]  This this is to verify the homepage title
    [Tags]  Regression
    [Setup]
            Open facebook website in Chrome and maximize the window
            Verify the home page title

    [Teardown]  Close Browser


TestCase2:Login_with_invalid_credentials
    [Documentation]  This is verify invalid credentials
    [Tags]    Regression
    [Setup]
        Open facebook website in Chrome and maximize the window
        Enter Invalid Username
#        clear element text  Xpath://*[@id="email"]
        Enter Invalid Password
        Sleep   ${timeout}
        Click on Submit
        Sleep   ${timeout}
    [Teardown]  close browser


TestCase3:Login_with_valid_credentials
    [Documentation]  This is verify valid credentials
    [Tags]    smoke
    [Setup]
        Open facebook website in Chrome and maximize the window
        Enter valid Username
        Enter valid Password
        Sleep   ${timeout}
        Click on Submit
        Sleep   ${timeout}
    [Teardown]  close browser