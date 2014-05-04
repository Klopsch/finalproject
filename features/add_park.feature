Feature: User add park

	As a user
	I want to add parks to my profile

Scenario: add park
	Given I am on the home page 
	And I follow "Sign up"
	Then I should be on the create account page
	And I fill in "Email" with "example@example.com"
	And I fill in "Password" with "password"
	And I fill in "Password confirmation" with "password"
	And I press "Sign up"
	Then I should be on the home page
	And I should see "Welcome! You have signed up successfully."
	Then I follow "View Profile"
	And I should see "User Profile"
	Then I follow "Add park"
	And I should see "Park List"
	Then I follow "Add park"
	And I should see "Park added"