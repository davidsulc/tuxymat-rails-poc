Feature: update partner

  In order to alter the information on an existing partner
  As an admin
  I want to be able to edit a partner

  Scenario: updating partner
    Given I am signed in as an admin
    And there are the following partners:
      | name     |
      | John Doe |
    And I am on the partner index page
    When I follow "Edit" within the row for partner "John Doe"
    And I fill in "Name" with "ABCDE"
    And I press "Update partner"
    Then I should be on the partner index page
    And I should see "Vending machine was successfully updated."
    And I should see "ABCDE"
    And I should not see "John Doe"