*** Settings ***
Resource                                 ../Resource/Setup.robot
Resource                                 ../Resource/ProductPage.robot
Resource                                 ../Resource/CheckoutPage.robot


Test setup                               Setup
# Test teardown                          Teardown


*** Test Cases ***
 User can oder a product successfully

                                         Go to Product page

                                         Choose Product

                                         Add Product To Cart

                                         View Cart

                                         Proceed To Check Out

                                         Fill out billing information

                                         Checkout

