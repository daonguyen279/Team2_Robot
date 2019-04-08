*** Settings ***
Resource                                ../Resource/Setup.robot

*** Variables ***
# form
${billingusername_textfield}            id=_billing_address_last_name
${billingphone_textfield}               id=_billing_address_phone
${billingadress_textfield}              id=BillingAddress.Address1
${billingcity_textfield}                xpath=//div/div[2]/div[2]/div/div[1]/div[1]/div[2]/div[2]/div/div[4]/div[1]/span/span[1]/span
${billingcity_value}                    id= select2-billingProvince-result-g4dq-3
${billingadress_textfield}              id=billingDistrict
${billingadress_value}                  id=select2-billingDistrict-result-qxpm-57
${billingnote_textfield}                xpath=/html/body/form/div/div[2]/div[2]/div/div[1]/div[4]/div/div/textarea


*** Keywords ***
Fill out billing information
    Input Text   ${billingusername_textfield} dao
    Input Text   ${billingphone_textfield}    0162999888
    Input Text   ${billingadress_textfield}   abc
    Select From List by Value   ${billingcity_textfield}      ${billingcity_value} 
    Select From List by Value   ${billingadress_textfield}    ${billingadress_value}
    Input Text  ${billingnote_textfield} test
                                                                  

Checkout 
    Click link  xpath=orm/div/div[1]/div[2]/div[4]/div/input
