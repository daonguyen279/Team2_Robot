*** Variables ***
${BROWSER}                  Chrome
${ROOT}                     https://petshop.vn/


*** Settings ***
Library                     Selenium2Library
Library                     OperatingSystem
Library                     PageObjectLibrary

*** Keywords ***
Setup
    ${PATH}=                          Normalize Path    ~/AppData/Local/Programs/Python/Python37/chromedriver.exe
    Log To Console                    ${PATH}
   
    Append To Environment Variable    ${PATH}           ${PATH}
    Open browser                      ${ROOT}           ${BROWSER}

Teardown

    Close all browsers
