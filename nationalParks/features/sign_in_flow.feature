Feature: User sign up, sign in, and log out

	As a user
	I want to create an account
	And sign in
	And logout

Scenario: create an account
	Given I am on the home page 
	And I follow "Sign up"
	Then I should be on the create account page
	And I fill in "Email" with "example@example.com"
	And I fill in "Password" with "password"
	And I fill in "Password confirmation" with "password"
	And I press "Sign up"
	Then I should be on the home page
	And I should see "Welcome! You have signed up successfully."
	Then I follow "Logout"
	Then I follow "Login"
	And I fill in "Email" with "example@example.com"
	And I fill in "Password" with "password"
	And I press "Sign in"
	Then I should be on the home page


