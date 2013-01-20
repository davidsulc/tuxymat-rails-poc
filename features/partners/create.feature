Feature: Creating partners
  In order to have partners to assign to contracts
  As an admin
  I want to create them easily

  Scenario: Creating a partner
    Given I am signed in as an admin
    And I am on the partner index page
    When I follow "Create"
    And I fill in "Name" with "John Doe"
    And I press "Create new partner"
    Then I should be on the partner index page
    And I should see "Partner was successfully created."