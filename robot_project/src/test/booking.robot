
*** Variables ***
| ${BROWSER} | Chrome
| ${ROOT}    | https://petshop.vn/
| ${PATH}    | C:\Users\InternDN19.01.03\AppData\Local\Programs\Python\Python37\chromedriver.exe


*** Settings ***
| Library    | Selenium2Library
| Library    | OperatingSystem
| Library    | PageObjectLibrary
|
| Suite Setup    | Open browser | ${ROOT} | ${BROWSER}
| Suite Teardown | Close all browsers
| Set Environment Variable | ${PATH}  | C:\Users\InternDN19.01.03\AppData\Local\Programs\Python\Python37\chromedriver.exe

 
*** Test Cases ***
| Order product
| | [Documentation] | Verify that user can order a product successfully
| | [Setup]         | Go to page | LoginPage
| | 
| | Enter email     | hongdao27997@gmail.com
| | Enter password  | 123456789
| | Click the login button
| | The current page should be | 

    
   
   
	Open Browser  ${URL}  ${Browser} 
	Click Link  xpath=//*[@id="page"]/header/div/div/div/div[@class="col-lg-6 col-md-6 col-sm-7 col-xs-12"]/div[@class="toplinks"]/div/div/a
	Input Text  id=email  demo
	Input Password  id=pass  hongdao27997@gmail.com
	Click Button  id=send2   123456789
	
	
	Click Link   xpath=//*[@id="nav"]/li[@class="level0 parent drop-menu"]/a
	Click Link   xpath=//*[@id="product-actions-13944670"]/div/button/span
	
	Click Link   id=cart-total
	Click Link   xpath=//*[@id="cart-sidebar"]/div[@class="animated_item actions"]/a[@class=" btn-checkout"]