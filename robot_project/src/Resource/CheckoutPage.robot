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
${Billing City Field}           name=BillingProvinceId
${Billing City Value}           1
${billingadress_textfield}      name=BillingDistrictId
${billingadress_value}          1
${Billing Note Field}           name=note
${Billing Note Value}           note
${Checkout Button Value}        ĐẶT HÀNG

*** Keywords ***
Fill out billing information
                                Input Text                      ${Billing Email Field}        ${Billing Email Value}
                                Input Text                      ${Billing Name Field}         ${Billing Name Value}
                                Input Text                      ${Billing Phone Field}        ${Billing Phone Value}
                                Input Text                      ${Billing Address Field}      ${Billing Address Value}
                                Select From List by Value       ${Billing City Field}         ${Billing City Value}
                                # Select From List by Value       ${billingadress_textfield}    ${billingadress_value}
                                Input Text                      ${Billing Note Field}         ${Billing Note Value}
Checkout
                                Click Button                    ${Checkout Button Value}
                                Wait Until Page Contains        Cảm ơn bạn đã đặt hàng
                                Location Should Contain         ${ROOT}checkout/thankyou/

