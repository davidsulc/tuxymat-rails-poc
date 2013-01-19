Feature: Signing out

  In order to prevent data form modified by unauthorized users
  As an amdin
  I want to be able to sign out

  Scenario: admin sign out
    Given I am signed in as an admin
    And I am on the homepage
    When I follow "Sign out"
    Then I should be on the sign in page
    And I should see "You need to sign in before continuing."
    And I should see "Sign in"
    And I should not see "Sign out"