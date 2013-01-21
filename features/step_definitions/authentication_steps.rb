Given /^I am signed in as an admin$/ do
  @user = FactoryGirl.create(:admin, email: "admin@example.com", password: "password")
  
  steps %Q{
    Given I am on the sign in page
    And I fill in "Email" with "admin@example.com"
    And I fill in "Password" with "password"
    And I press "Sign in"
  }
end
