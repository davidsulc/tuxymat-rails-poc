Feature: delete a contract

  In order to remove contracts from the system
  As an admin
  I want to be able to delete contracts
  
  Background:
    Given there are the following partners:
      | id | name     |
      | 1  | John Doe |
      | 2  | Bob Bund |
    And there are the following vending machines:
      | id | serial_number |
      | 1  | 12345         |
      | 2  | ABCDE         |

  Scenario: delete a contract
    Given I am signed in as an admin
    And there are the following contracts:
      | id | start_date | partner_id | vending_machine_id |
      | 3  | 2012-01-02 | 1          | 1                  |
      | 4  | 2012-11-22 | 2          | 2                  |
    And I am on the page for contract with id 3
    When I follow "Delete"
    Then I should be on the contract index page
    And I should see "Contract was successfully deleted."
    And I should not see "John Doe"
    And I should not see "12345"
    And I should not see "2012-01-02"
    But I should see "Bob Bund"

  Scenario: delete the last vending machine
    Given I am signed in as an admin
    And there are the following contracts:
      | id | start_date | partner_id | vending_machine_id |
      | 3  | 2012-01-02 | 1          | 1                  |
    And I am on the page for contract with id 3
    When I follow "Delete"
    Then I should be on the contract index page
    And I should see "There are no contracts to display."
    And I should not see "John Doe"