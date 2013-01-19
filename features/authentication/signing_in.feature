Feature: Signing in

  In order to use the site
  As an admin
  I want to be able to sign in

  Background:
    Given there are the following users:
    | email             | password |
    | admin@example.com | password |

  Scenario: admin sign in with email
    When I am on the sign in page
    And I fill in "Email" with "admin@example.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."