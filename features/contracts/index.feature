Feature: contract index

  In order to have an overview of the contracts in the system
  As an admin
  I want to see a list of contracts on the index page

  Background:
    Given I am signed in as an admin
    And there are the following partners:
      | id | name     |
      | 1  | John Doe |
    And there are the following vending machines:
      | id | serial_number |
      | 1  | 12345         |
    And there are the following contracts:
      | id | start_date | partner_id | vending_machine_id |
      | 3  | 2012-01-21 | 1          | 1                  |

  Scenario: contracts are displayed on the index page
    When I go to the contract index page
    Then I should see "John Doe"

  Scenario: contracts can be created from the index page
    When I go to the contract index page
    And I follow "Create"
    Then I should be on the new contract page

  Scenario: contracts can be viewed from the index page
    When I go to the contract index page
    And I follow "Show"
    Then I should be on the page for contract with id 3
    