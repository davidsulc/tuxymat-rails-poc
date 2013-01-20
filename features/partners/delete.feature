Feature: delete partner

  In order to remove partners from the system
  As an admin
  I want to be able to delete partners

  Scenario: delete a partner
    Given I am signed in as an admin
    And there are the following partners:
      | name            |
      | John Doe        |
      | Benjamin Button |
    And I am on the partner index page
    When I follow "Delete" within the row for partner "John Doe"
    Then I should be on the partner index page
    And I should see "Partner was successfully deleted."
    And I should not see "John Doe"
    And I should see "Benjamin Button"

  Scenario: delete the last partner
    Given I am signed in as an admin
    And there are the following partners:
      | name            |
      | John Doe        |
    And I am on the partner index page
    When I follow "Delete" within the row for partner "John Doe"
    Then I should be on the partner index page
    And I should see "There are no partners to display."
    And I should not see "John Doe"