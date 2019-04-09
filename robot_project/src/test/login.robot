** Settings **
Library           Selenium2Library
Library           OperatingSystem
 
** Variables **
${username}       dong.nguyen26it@gmail.com
${ErrPassword}    t0ikh0elamluona
${Browser}        Chrome
${PATH}           C:\Users\InternDN19.01.02\AppData\Local\Programs\Python\Python37\chromedriver.exe
${SiteUrl}        https://petshop.vn/
${LoginUrl}       ${SiteUrl}account/login/
${WelcomeUrl}     ${SiteUrl}account
${LogoutUrl}      ${SiteUrl}
${Delay}          5s
 
** Test Cases **
Valid Login
    Open Browser To Login Page
    Input Username    
    Input Password    
    Submit Credentials
    sleep    ${Delay}
    Welcome Page Should Be Open
    Click Logout
    [Teardown]    Close Browser
 
** Keywords **
Open Browser To Login Page
    open browser    ${LoginUrl}    ${Browser}
    Maximize Browser Window
 
Input Username
    Input Text    id=email    ${username}
 
Input Password
    Input Text    id=pass    ${ErrPassword}

 Submit Credentials
    Click Button    id=send2
 
Welcome Page Should Be Open
    Location Should Be    ${WelcomeUrl} 
    Title Should Be        Trang khách hàng
Click Logout
    Click Element         xpath=//a[@class="login_acc"]/span[@class="hidden-xs"]   
    Click Element         xpath=//a[@id="customer_logout_link"]    