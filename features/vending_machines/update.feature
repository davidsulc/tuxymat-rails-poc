Feature: update vending machine

  In order to alter the information on an existing vending machine
  As an admin
  I want to be able to edit a vending machine

  Scenario: updating vending machine
    Given I am signed in as an admin
    And there are the following vending machines:
      | serial_number |
      | 12345         |
    And I am on the page for vending machine "12345"
    When I follow "Edit"
    And I fill in "Serial number" with "ABCDE"
    And I press "Update vending machine"
    Then I should be on the page for vending machine "ABCDE"
    And I should see "Vending machine was successfully updated."
    And I should see "ABCDE"
    And I should not see "12345"