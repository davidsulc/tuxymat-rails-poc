Feature: vending machine index

  In order to have an overview of the vending machines in the system
  As an admin
  I want to see a list of vending machines on the index page

  Background:
    Given I am signed in as an admin
    And there are the following vending machines:
      | serial_number |
      | 12345         |

  Scenario: vending machines are displayed on the index page
    When I go to the vending machine index page
    Then I should see "12345"

  Scenario: vending machines can be created from the index page
    When I go to the vending machine index page
    And I follow "Create"
    Then I should be on the new vending machine page

  Scenario: vending machines can be viewed from the index page
    When I go to the vending machine index page
    And I follow "Show"
    Then I should be on the page for vending machine "12345"
    