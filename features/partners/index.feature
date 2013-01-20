Feature: partner index

  In order to have an overview of the partners in the system
  As an admin
  I want to see a list of partners on the index page

  Background:
    Given I am signed in as an admin
    And there are the following partners:
      | name     |
      | John Doe |

  Scenario: partners are displayed on the index page
    When I go to the partner index page
    Then I should see "John Doe"

  Scenario: partners can be created from the index page
    When I go to the partner index page
    And I follow "Create"
    Then I should be on the new partner page

  Scenario: partners can be edited from the index page
    When I go to the partner index page
    And I follow "Edit" within the row for partner "John Doe"
    Then I should be on the edit page for partner "John Doe"

  Scenario: partners can be deleted from the index page
    When I go to the partner index page
    When I follow "Delete" within the row for partner "John Doe"
    Then I should be on the partner index page
    And I should not see "John Doe"
    