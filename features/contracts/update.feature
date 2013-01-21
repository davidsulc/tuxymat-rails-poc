Feature: update contract

  In order to alter the information on an existing contract
  As an admin
  I want to be able to edit a contract

  Scenario: updating a contract
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
    And I am on the page for contract with id 3
    When I follow "Edit"
    And I select "31" from "contract_start_date_3i"
    And I press "Update contract"
    Then I should be on the page for contract with id 3
    And I should see "Contract was successfully updated."
    And I should see "2012-01-31"
    And I should not see "2012-01-21"