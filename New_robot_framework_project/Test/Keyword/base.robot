*** Settings ***
Documentation       Testing FacebookLogin
Library             Selenium2Library
Library             BuiltIn
Variables           ../Variable/variable.py
Variables           ../Locators/locators.py

*** Keywords ***

Open facebook website in Chrome and maximize the window
    Open Browser  url=${URL}  browser=chrome
    Set Screenshot Directory  ${screenshot_path}
    Maximize Browser Window
    #Log  Browser is Maximized
    Log to console  Browser is Maximized


Verify the Home page title
    ${WindowTitle}=    Get Title
    Should Be Equal  ${WindowTitle}  ${title}
    Log to console  Navigated to :${WindowTitle}

Enter Invalid Username
    Input Text    xpath=${username}  ${Invalidusername}
    Log to console  Entered wrong username

Enter valid Username
    Input Text    xpath=${username}  ${validusername}
    Log to console  Entered wrong username

Enter Invalid Password
    Input Text    xpath=${password}  ${Invalidpassword}
    Log to console  Entered wrong password

Enter valid Password
    Input Text    xpath=${password}  ${validpassword}
    Log to console  Entered wrong password

Click on Submit
    Click Element  xpath=${Submit}



