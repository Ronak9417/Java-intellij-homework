Feature: Demo Nopcommerce's top menu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And User click on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to Books Category
    When User is on given URL
    And Click on Books tab on Top Menu
    Then User is navigated to Books Category Page

  Scenario: Verify that user can see 'Sort By' filter on Book Category Page with filters and list of products
    When User is on given URL
    And Click on Books tab on Top Menu
    And Check Filters and List Tab
    Then Books Category page is displayed with filters and List Tab

  Scenario: Verify that user can see 'Sort By' filter on Books Category Page
    Given User is on Books Category page
    When User is on Books Category page
    And Check 'Sort By' filter is present
    Then 'Sort By' filter is available on Book Category Page

  Scenario: Verify that user can see 'Display' filter on Book Category Page
    Given User is on Book Category Page
    When User in on Book Category Page
    And Check 'Display' filter is present
    Then 'Display' filter is available on Book Category Page

  Scenario: Verify that user can see 'Grid' tab on Book Category Page
    Given User is on Book Category Page
    When User in on Book Category Page
    And Check 'Grid' tab is present
    Then 'Grid' tab is available on Book Category Page

  Scenario: Verify that user can see 'List' tab on Book Category Page
    Given User is on Book Category Page
    When User in on Book Category Page
    And Check 'List' tab is present
    Then 'List' tab is available on Book Category Page

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given User is on Book Category Page
    When User is on Books Category Page
    And Click on 'Sort By' filter
    And Check that 'Name: A to Z' selection is present
    Then 'Name A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given User is on Book Category Page
    When User is on Books Category Page
    And Click on 'Sort By' filter
    And Check that 'Name: A to Z' is first in order
    Then 'Name A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected(Note : Products are filter in alphabetical order)
    Given User is on Book Category Page
    When User is on Books Category Page
    And Click on 'Sort By' filter
    And Select 'Name: A to Z' filter
    Then All products are displayed in alphabetical order




