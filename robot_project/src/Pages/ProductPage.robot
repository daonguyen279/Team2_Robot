*** Settings ***
Resource                ../Resource/Setup.robot

*** Keywords ***
Go to Product page
    Log To Console                      Go to Product page
                        Click Element                       xpath=//*[@id="nav"]/li[2]/a/span
Choose Product
                        Log To Console                      Choose Product
                        Click Element                       xpath=//*[@id="page"]/section/div/div/section/div[2]/ul/li[2]/div/div[1]/div[1]/a/figure/img[2]

Add Product To Cart
                        Log To Console                      Add Product To Cart
                        Click Element                       xpath=//*[@id="add-to-cart-form"]/div[3]/div[4]/div[2]/button/span
                        Wait Until Page Contains Element    xpath=//*[@class="jGrowl-message"]
                        Click Element                       xpath=//*[@class="jGrowl-close"]
View Cart
                        Log To Console                      Proceed To Check Out
                        Mouse Over                          id=cart-total
                        Wait Until Element Is Visible       xpath=//*[@class=" view-cart"]
                        Click Element                       xpath=//*[@class=" view-cart"]
                        Wait Until Page Contains Element    xpath=//*[@class="button btn-proceed-checkout"]
                        Location Should Be                  ${ROOT}cart
Proceed To Check Out
                        Click Element                       xpath=//*[@class="button btn-proceed-checkout"]
                        Wait Until Page Contains Element    xpath=//*[@class="btn btn-primary btn-checkout"]
                        Location Should Contain             ${ROOT}checkout
