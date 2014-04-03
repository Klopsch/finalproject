Feature: user login

	As a user
	I want to log into my account

Scenario: user login
	Given I am on the login page
	And I fill in "Email" with "example@example.com"
	And I fill in "Password" with "password"
	And I fill in "Password confirmation" with "password"
	And I follow "Sign in"
	Then I should be on the home page
	And I should see "Welco"