Feature: As a customer i want to go to a product page and add the product to the cart and i should be able to see this product added to cart on shopping cart page

Scenario: verify add a product to cart button
Given i am on william sonoma website
When i click on a product that i choosed
Then i should see the button “add to cart”

Scenario: verify OVERLAY for ADD CART BUTTON
Given i am on william sonoma website
When i click on a product that i choosed
Then i should see the button “add to cart”
When i click on the button add to cart
Then I should see the add to cart overlay”

Scenario: verify the checkout button
Given i am on william sonoma website
When i click on a product that i choosed
When i should see the button “add to cart”
When i click on the button add to cart
And I should see the add to cart overlay”
Then i should see the Checkout button on the add to cart overlay

Scenario: add procucts on shopping cart page
Given i am on william sonoma website
When i click on a product that i choosed
When i should see the button “add to cart”
When i click on the button add to cart
And I should see the add to cart overlay”
Then i should see the Checkout button on the add to cart overlay
And i click the checkout button
Then i should be navigated to the shopping cart page
And the product i choosed should be displayed on shopping cart page














