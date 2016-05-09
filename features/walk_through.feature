Feature: Walking Through Site

    Scenario: Viewing an available pup
      Given I have an existing account
      And I have test data
      When I go to the sign in path
      And I fill in "Email" with "admin@doogle.com"
      And I fill in "Password" with "password"
      And I press "Sign in"
      And I click "Organizations"
      And I click "Austin Pets Alive"
      And I click "Boscar"
      Then I should see "Currently living at"
