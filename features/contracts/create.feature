Feature: Creating contracts
  In order to have manage contracts
  As an admin
  I want to enter them in the system

  Scenario: Creating a contract
    Given I am signed in as an admin
    And there are the following vending machines:
      | serial_number |
      | 12345         |
    And there are the following partners:
      | name     |
      | John Doe |
    And I am on the contract index page
    When I follow "Create"
    And I select "2012" from "contract_start_date_1i"
    And I select "January" from "contract_start_date_2i"
    And I select "2" from "contract_start_date_3i"
    And I press "Create new contract"
    Then I should see "Contract was successfully created."
    And I should see "John Doe"
    And I should see "12345"
    And I should see "2012-01-02"