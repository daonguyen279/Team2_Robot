*** Settings ***
Resource                        ../Resource/Setup.robot

*** Variables ***
# form
${Billing Email Field}          name=Email
${Billing Email Value}          abc@domain.com
${Billing Name Field}           name=BillingAddress.LastName
${Billing Name Value}           dao
${Billing Phone Field}          name=BillingAddress.Phone
${Billing Phone Value}          0977755566
${Billing Address Field}        name=BillingAddress.Address1
${Billing Address Value}        address
<<<<<<< HEAD
${Billing City Field}           xpath=//*[@id="select2-billingProvince-results"]
${billingcity_value}            id= select2-billingProvince-result-g4dq-3
${billingdistrict field}        xpath=//*[@id="select2-billingDistrict-results"]
${billingdictrict_value}        id=select2-billingDistrict-result-qxpm-57
${billingnote_textfield}        xpath=/html/body/form/div/div[2]/div[2]/div/div[1]/div[4]/div/div/textarea
${Checkout Button}              xpath=//*[@class="btn btn-primary btn-checkout"]

*** Keywords ***
Fill out billing information
                                Input Text                                                                    ${Billing Email Field}                  ${Billing Email Value}
                                Input Text                                                                    ${Billing Name Field}                   ${Billing Name Value}
                                Input Text                                                                    ${Billing Phone Field}                  ${Billing Phone Value}
                                Input Text                                                                    ${Billing Address Field}                ${Billing Address Value}
                                Click Element                                                                 id=select2-billingProvince-container
                                Select From List by Value                                                     ${Billing City Field}                   ${billingcity_value}
                                Click Element                                                                 id=select2-billingDistrict-container
                                Select From List by Value                                                     ${billingdistrict field}                ${billingdictrict_value}
                                Input Text                                                                    ${billingnote_textfield} test

Checkout
                                Click link                                                                    ${Checkout Button}
                                Wait Until Page Contains                                                      Cảm ơn bạn đã đặt hàng
                                Location Should Contain                                                       ${ROOT}checkout/thankyou/
=======
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
>>>>>>> ffa80565e06aac9d046a3dcb10289e116a58d224

