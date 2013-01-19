Feature: delete vending machine

  In order to remove vending machines from the system
  As an admin
  I want to be able to delete vending machines

  Scenario: delete a vending machine
    Given I am signed in as an admin
    And there are the following vending machines:
      | serial_number |
      | 12345         |
      | ABCDE         |
    And I am on the page for vending machine "12345"
    When I follow "Delete"
    Then I should be on the vending machine index page
    And I should see "Vending machine was successfully deleted."
    And I should not see "12345"
    And I should see "ABCDE"

  Scenario: delete the last vending machine
    Given I am signed in as an admin
    And there are the following vending machines:
      | serial_number |
      | 12345         |
    And I am on the page for vending machine "12345"
    When I follow "Delete"
    Then I should be on the vending machine index page
    And I should see "There are no vending machines to display."
    And I should not see "12345"