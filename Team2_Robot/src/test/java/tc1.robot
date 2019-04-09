** Settings **
Library                     ExcelLibrary
Library                     Collections
Library                     SeleniumLibrary
Library                     OperatingSystem
Library                     PageObjectLibrary


** Test Cases **

Register
    Open Browser    https://webvihoang0706.000webhostapp.com/sehama-website/    chrome
    Maximize Browser Window
    
Go to Register page
    Click Element    xpath=//div[@class='account']/a[@href=" https://webvihoang0706.000webhostapp.com/sehama-website/register"]
    Open Excel    data1.xlsx
    Switch Sheet    login
    @{all}=    Read Sheet Data
    @{data}=  Get Slice From List  ${all}  1
    : FOR    ${i}    IN    @{data}
    
Enter Fullname
    Input Text    id=fullname_input    ${i[0]}

Enter Email
    Input Text    id=email_input    ${i[1]}

Enter Password
    Input Text    id=password_input    ${i[2]}
    
Enter ConfirmPassword
    Input Text    id=confirmpassword_input    ${i[3]}

Enter Address
    Input Text    id=address_input    ${i[4]}
    
Enter Phonenumber
    Input Text    id=phonenumber_input    ${i[5]}
    
Select Chechbox
    Select Checkbox    id=chexboxAgreement
    
Click Register
    Click Button    xpath=//button[@id='register-button']