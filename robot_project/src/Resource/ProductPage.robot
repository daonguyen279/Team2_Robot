*** Settings ***
Resource                ../Resource/Setup.robot

*** Keywords ***
Go to Product page
                        Click Element              xpath=//*[@id="nav"]/li[2]/a/span
Choose Product
                        Click Element                 xpath=//*[@id="page"]/section/div/div/section/div[2]/ul/li[2]/div/div[1]/div[1]/a/figure/img[2]

Add Product To Cart
                        Click Element                 xpath=//*[@id="add-to-cart-form"]/div[3]/div[4]/div[2]/button/span
                        Wait Until Page Contains    THÊM VÀO GIỎ                       
Proceed To Check Out
                        Click Element               id=cart-total
                        Click Element               xpath=//*[@id="cart-sidebar"]/div[3]/a[2]
