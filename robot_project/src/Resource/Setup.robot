*** Variables ***
 ${BROWSER}                 Chrome
 ${ROOT}                    https://petshop.vn/
 ${PATH}                    C:\Users\InternDN19.01.03\AppData\Local\Programs\Python\Python37\chromedriver.exe


*** Settings ***
Library                     Selenium2Library
Library                     OperatingSystem
Library                     PageObjectLibrary

*** Keywords ***
Setup

   Set Environment Variable    ${PATH}                                                                              C:\Users\InternDN19.01.03\AppData\Local\Programs\Python\Python37\chromedriver.exe
   Open browser                ${ROOT}                                                                              ${BROWSER}

Teardown

   Close all browsers
