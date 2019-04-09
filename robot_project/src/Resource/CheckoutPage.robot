*** Settings ***
Resource                        ../Resource/Setup.robot

*** Variables ***
# form
${Billing Email Field}          name=Email
${Billing Email Value}          abc@domain.com
${Billing Name Field}           name=BillingAddress.LastName
${Billing Name Value}           dao
${Billing Phone Field}          name=BillingAddress.Phone
${Billing Phone Value}          123456789
${Billing Address Field}        name=BillingAddress.Address1
${Billing Address Value}        address
${Billing City Field}           xpath=//div/div[2]/div[2]/div/div[1]/div[1]/div[2]/div[2]/div/div[4]/div[1]/span/span[1]/span
${billingcity_value}            id= select2-billingProvince-result-g4dq-3
${billingadress_textfield}      id=billingDistrict
${billingadress_value}          id=select2-billingDistrict-result-qxpm-57
${billingnote_textfield}        xpath=/html/body/form/div/div[2]/div[2]/div/div[1]/div[4]/div/div/textarea
${Checkout Button}              xpath=//*[@class="btn btn-primary btn-checkout"]

*** Keywords ***
Fill out billing information
                                Input Text                                                                                       ${Billing Email Field}           ${Billing Email Value}
                                Input Text                                                                                       ${Billing Name Field}            ${Billing Name Value}
                                Input Text                                                                                       ${Billing Phone Field}           ${Billing Phone Value}
                                Input Text                                                                                       ${Billing Address Field}         ${Billing Address Value}
                                Select From List by Value                                                                        ${Billing City Field}            ${billingcity_value}
                                Select From List by Value                                                                        ${billingadress_textfield}       ${billingadress_value}
                                Input Text                                                                                       ${billingnote_textfield} test

Checkout
                                Click link                                                                                       ${Checkout Button}
                                Wait Until Page Contains                                                                         Cảm ơn bạn đã đặt hàng
                                Location Should Contain                                                                          ${ROOT}checkout/thankyou/

