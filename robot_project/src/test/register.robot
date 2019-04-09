*** Settings ***
Library                     Selenium2Library
Library                     OperatingSystem
Library                     PageObjectLibrary
Resource                    ../Resource/Setup.robot


*** Variables ***


${Password}    123456789a
${Address}       101B Le Huu Trac
${Phonenumber}       0123456789
${Browser}        Chrome
${SiteUrl}        https://webvihoang0706.000webhostapp.com/sehama-website/
${PATH}            C:\Users\InternDN19.01.07\AppData\Local\Programs\Python\Python37\chromedriver.exe
${WelcomeText}    
${Delay}          5s


*** Test Cases ***
Register successfully
    Open PetshopPage
    Go to Register page
    Enter Fullname
    Enter Email
    Enter Password
    Enter ConfirmPassword
    Enter Address
    Enter Phonenumber
    Select Chechbox
    Click Register
    Check Register Successfully
    Teardown


*** Keywords ***
Open PetshopPage
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    
Go to Register page
    Click Element    xpath=//div[@class='account']/a[@href=" https://webvihoang0706.000webhostapp.com/sehama-website/register"]
    
Enter Fullname
    ${Fullname}    Generate Random String  10  [LETTERS]
    Input Text    id=fullname_input    ${Fullname}

Enter Email
    Input Text    id=email_input    ${Fullname}@gmail.com

Enter Password
    Input Text    id=password_input    ${Password}
    
Enter ConfirmPassword
    Input Text    id=confirmpassword_input    ${Password}

Enter Address
    Input Text    id=address_input    ${Address}
    
Enter Phonenumber
    Input Text    id=phonenumber_input    ${Phonenumber}
    
Select Chechbox
    Select Checkbox    id=chexboxAgreement
    
Click Register
    Click Button    xpath=//button[@id='register-button']
    
Check Register Successfully
    Location Should Contain    xpath=//p[@class="title-header"]
    Input Text    id=email    ${Address}
    Input Text    id=password    ${Phonenumber}
    Click Button    id=login-button
    Element Text Should Be    xpath=//div[@id='logged-account']/a[@id='list-item']    ${WelcomeText}