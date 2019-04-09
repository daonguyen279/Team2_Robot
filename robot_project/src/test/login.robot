** Settings **
Library           Selenium2Library
Library           OperatingSystem
 
** Variables **
${Username}       dong.nguyen26it@gmail.com
${ErrPassword}    t0ikh0elamluona
${Browser}        Chrome
${PATH}           C:\Users\InternDN19.01.02\AppData\Local\Programs\Python\Python37\chromedriver.exe
${SiteUrl}        https://petshop.vn/
${LoginUrl}       ${SiteUrl}account/login/
${WelcomeUrl}     ${SiteUrl}account
${Delay}          5s
 
** Test Cases **
Valid Login
    Open Browser To Login Page
    Input Username    
    Input Password    
    Submit Credentials
    sleep    ${Delay}
    Welcome Page Should Be Open
    [Teardown]    Close Browser
 
** Keywords **
Open Browser To Login Page
    Set Environment Variable  ${PATH}  C:\Users\InternDN19.01.02\AppData\Local\Programs\Python\Python37\chromedriver.exe
    open browser    ${LoginUrl}    ${Browser}
    Click link        xpath = //*[contains(text(),'Đăng nhập')]
    Maximize Browser Window
 
Input Username
    Input Text    id=email    ${Username}
 
Input Password
    Input Text    id=pass    ${ErrPassword}

 Submit Credentials
    Click Button    id=send2
 
Welcome Page Should Be Open
    Element Text Should Be    xpath=//*[@class='welcome-msg']     ${WelcomeUrl} 