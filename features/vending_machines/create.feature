Feature: Creating vending machines
  In order to have vending machines to manage
  As an admin
  I want to create them easily

  Scenario: Creating a vending machine
    Given I am signed in as an admin
    And I am on the vending machine index page
    When I follow "Create"
    And I fill in "Serial number" with "12345"
    And I press "Create new vending machine"
    Then I should be on the page for vending machine "12345"
    And I should see "Vending machine was successfully created."