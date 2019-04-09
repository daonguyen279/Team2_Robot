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
${Billing City Field}           name=BillingProvinceId
${Billing City Label}           Hà Nội
${Billing District Field}       name=BillingDistrictId
${Billing District Label}       Quận Ba Đình
${Billing Note Field}           name=note
${Billing Note Value}           note
${Checkout Button Value}        ĐẶT HÀNG
${Progress Bar}                 id=nprogress
*** Keywords ***
Fill out billing information
                                Input Text                                                                    ${Billing Email Field}                                                                              ${Billing Email Value}
                                Input Text                                                                    ${Billing Name Field}                                                                               ${Billing Name Value}
                                Input Text                                                                    ${Billing Phone Field}                                                                              ${Billing Phone Value}
                                Input Text                                                                    ${Billing Address Field}                                                                            ${Billing Address Value}
                                Select From List By Label                                                     ${Billing City Field}                                                                               ${Billing City Label}
                                Wait Until Page Contains Element                                              ${Progress Bar}
                                Wait Until Page Does Not Contain Element                                      ${Progress Bar}
                                Select From List By Label                                                     ${Billing District Field}                                                                           ${Billing District Label}
                                Input Text                                                                    ${Billing Note Field}                                                                               ${Billing Note Value}
Checkout
                                Click Button                                                                  ${Checkout Button Value}
                                Wait Until Page Contains                                                      Cảm ơn bạn đã đặt hàng
                                Location Should Contain                                                       ${ROOT}checkout/thankyou/
