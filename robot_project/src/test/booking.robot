*** Settings ***
Library  Selenium2Library
Library           OperatingSystem
Documentation
...    Login Test Case.


***Variables***
${Browser}  Chrome
${URL}  https://petshop.vn/
${PATH}          C:\Users\InternDN19.01.03\AppData\Local\Programs\Python\Python37\chromedriver.exe



 
*** Test Cases ***
TC_001 Browser Start and Close
    
    Set Environment Variable  ${PATH}  C:\Users\InternDN19.01.03\AppData\Local\Programs\Python\Python37\chromedriver.exe
   
	Open Browser  ${URL}  ${Browser} 
	Click Link  xpath=//*[@id="page"]/header/div/div/div/div[@class="col-lg-6 col-md-6 col-sm-7 col-xs-12"]/div[@class="toplinks"]/div/div/a
	Input Text  id=email  demo
	Input Password  id=pass  abc123
	Click Button  id=send2
	Close Browser