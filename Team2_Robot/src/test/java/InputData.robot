*** Settings ***
Library           ExcelLibrary
Library           SeleniumLibrary
Library            Collections

*** Test Cases ***
login
    Open Browser    http://demo.guru99.com/insurance/v1/index.php    chrome
    Maximize Browser Window
    Open Excel    data.xlsx
    Switch Sheet    login
    @{all}=    Read Sheet Data
    @{data}=  Get Slice From List  ${all}  1
    : FOR    ${i}    IN    @{data}
    \    Clear Element Text    email
    \    Input Text    email    ${i[0]}    #first columns in excel
    \    Clear Element Text    password
    \    Input Password    password    ${i[1]}
    \    Click Button    name = submit
    \    Wait Until Element Is Visible    css=div> span
    \    ${lblActual}=    Get Text    css=div> span
    \    Should Be Equal As Strings    ${lblActual}    ${i[2]}
    Close Browser
