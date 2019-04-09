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
${Billing City Field}           xpath=//*[@id="select2-billingProvince-results"]
${billingcity_value}            Hà Nội
${billingdistrict field}        xpath=//*[@id="select2-billingDistrict-results"]
${billingdictrict_value}        Quận Ba Đình
${billingnote_textfield}        xpath=/html/body/form/div/div[2]/div[2]/div/div[1]/div[4]/div/div/textarea
${billingnote_value}            test
${Checkout Button}              //div[2]/div[2]/div/div[2]/div[3]/div[1]/input
*** Keywords ***
Fill out billing information
                                Input Text                                                                    ${Billing Email Field}                                                                              ${Billing Email Value}
                                Input Text                                                                    ${Billing Name Field}                                                                               ${Billing Name Value}
                                Input Text                                                                    ${Billing Phone Field}                                                                              ${Billing Phone Value}
                                Input Text                                                                    ${Billing Address Field}                                                                            ${Billing Address Value}
                                Click Element                                                                 xpath=//div[2]/div[2]/div/div[1]/div[1]/div[2]/div[2]/div/div[4]/div[1]/span/span[1]/span
                                Click Element                                                                 xpath=//*[@id="select2-billingProvince-results"]/li[contains(text(),"${billingcity_value}")]
                                # Select From List By Value                                                   ${Billing City Field}                                                                               ${billingcity_value}

                                Click Element                                                                 xpath=//div[2]/div[2]/div/div[1]/div[1]/div[2]/div[2]/div/div[5]/div[1]/span/span[1]/span
                                Input Text                                                                    xpath=//div[2]/div[2]/span/span/span[1]/input                                                       ${billingdictrict_value}
                                Click Element                                                                 xpath=//*[@id="select2-billingDistrict-results"]/li[contains(text(),"${billingdictrict_value}")]
                                # Select From List By Value                                                   ${billingdistrict field}                                                                            ${billingdictrict_value}
                                Input Text                                                                    ${billingnote_textfield}                                                                            ${billingnote_value}
Checkout
                                Click Button                                                                  ${Checkout Button}

