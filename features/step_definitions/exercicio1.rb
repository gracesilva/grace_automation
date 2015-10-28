Given(/^i am on william sonoma website$/) do
  begin
  visit Add
  Log.instance.debug("Web page successfully accessed ")
  rescue
  raise "ERROR-ENV: Could not access web page"
  end
end

When(/^i click on a product that i choosed$/) do
  begin
  on(Add).choose_product
  Log.instance.debug("Success by clicking in a product ")
  rescue
    raise "ERROR-ENV: Could not click in a product"
  end
end

Then(/^i should see the button “add to cart”$/) do
  begin
  on(Add).verify_add_to_cart
  Log.instance.debug("Add to cart button is visible ")
  rescue
    raise "ERROR-ENV: Could not check Add to cart button"
  end
end

Then(/^I should see the add to cart overlay”$/) do
  begin
  on(Add).verify_overlay_add_to_cart_btn
  Log.instance.debug("Add to cart overlay is visible ")
  rescue
    raise "ERROR-ENV: Could not check Add to cart overlay"
    end
end

Then(/^i should see the Checkout button on the add to cart overlay$/) do
  begin
  on(Add).see_checkout_btn
  Log.instance.debug("Checkout button is visible ")
  rescue
    raise "ERROR-ENV: Could not check Checkout button"
  end
end

When(/^i click the checkout button$/) do
  begin
  on(Add).checkout_btn
  Log.instance.debug("Clicked on Checkout button ")
  rescue
    raise "ERROR-ENV: Could not click on Checkout button"
  end
end

Then(/^i should be navigated to the shopping cart page$/) do
  begin
  on(Add).shop_cart_page
  Log.instance.debug("navigated to the shopping cart page ")
  rescue
    raise "ERROR-ENV: Could not navigate to the shopping cart page"
  end
end

When(/^i click on the button add to cart$/) do
  begin
  on(Add).click_add_cart_btn
  Log.instance.debug("Clicked on Add to cart button ")
  rescue
    raise "ERROR-ENV: Could not click on Add to cart button"
  end
end

Then(/^the product i choosed should be displayed on shopping cart page$/) do
  begin
  on(Add).product_added_scp
  Log.instance.debug("Chosen product displayed on shopping cart page  ")
  rescue
    raise "ERROR-ENV: Chosen product is not displayed on cart page"
  end
end





