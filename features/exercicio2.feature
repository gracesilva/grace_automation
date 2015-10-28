
 Feature: I want to search for a product and open it's quick look overlay, also I should be able to see the exact same clicked product on the quick look overlay

  Scenario: Verify results page
    Given i am on william sonoma website
    And i search for "treats" on search bar
    Then the search field takes me to the results page


  Scenario: Verify quick look button
    Given i am on william sonoma website
    Then i click on search bar
    And i search for "treats" on search bar
    Then the search field takes me to the results page
    Then i should be able o see the the quick look button on product overlay


  Scenario: Verify display for product overlay
    Given i am on william sonoma website
    Then i click on search bar
    And i search for "treats" on search bar
    Then the search field takes me to the results page
    And i click the quicklook button
    Then i should be able to see the product overlay


  Scenario: Verify matching information for product's attributes in product overlay
    Given i am on william sonoma website
    Then i click on search bar
    And i search for "treats" on search bar
    Then the search field takes me to the results page
    And i click the quicklook button
    Then i should be able to see the product overlay
    Then i confirm that the informations about name and price are the same as the product in the overlay