@add_product_to_basket
Feature: As a Customer
  I want to be able to search for book
  So that I can read them


  Background:
    Given I navigate to the search page

  Scenario Outline: the expected items are on the page
    Then I should see <item> item
  Examples:
    |item|
    |logo|
    |search bar|
    |sign in|


  Scenario: search term should be included on the page
    When I search for cole
    Then I am on the search results page
    And  I should be displayed the correct results

    Scenario: navigate to incorrect pagination number
      When I search for cole
      And I go to a page number higher than expected
      Then pagination error message is displayed
