Then(/^i click on search bar$/) do
  begin
  on(Add).search_product
  Log.instance.debug("Texfield for search bar was clicked ")
  rescue
    raise "ERROR-ENV: Could not click on search bar"
  end

end

When(/^i search for "([^"]*)" on search bar$/) do |product|
  begin
  @product = product
  @current_page.finding_product @product
  Log.instance.debug("Able to search for a product ")
  rescue
    raise "ERROR-ENV: could not search for a product"
  end
end

Then(/^the search field takes me to the results page$/) do
  begin
  on(Add).results_displayed
  Log.instance.debug("User redirected to results page ")
  rescue
    raise "ERROR-ENV: Could not be redirected to results page"
  end
end

Then(/^i should be able o see the the quick look button on product overlay$/) do
  begin
  on(Add).check_quick_look
  Log.instance.debug("Able to see quick look button")
  rescue
    raise "ERROR-ENV: Could not see quick look button "
  end
end

Then(/^i click the quicklook button$/) do
  begin
  on(Add).click_quick_look
  Log.instance.debug("User able to click on quick look button")
  rescue
    raise "ERROR-ENV: Could not click on quick look button"
  end
end

Then(/^i should be able to see the product overlay$/) do
  begin
  on(Add).check_overlay
  Log.instance.debug("User able to see product overlay")
  rescue
    raise "ERROR-ENV: Could not see product overlay"
  end

end

Then(/^i confirm that the informations about name and price are the same as the product in the overlay$/) do
  begin
  on(Add).price_matching.product_name_matching
  Log.instance.debug("Information matched with success")
  rescue
    raise "ERROR-ENV: Information didn't match"
  end
end