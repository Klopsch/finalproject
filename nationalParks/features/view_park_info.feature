Feature: User can view park information

	As a user
	I want to view park information

Scenario: create an account
	Given I am on the home page 
	Then I follow "New Park"
	And I fill in "Parkname" with "Rocky"
	And I fill in "Location" with "Park"
	And I fill in "Info" with "Fun"
	And I press "Save"
	Then I should see "Park was successfully created"
	Then I follow "Back"
	Then I follow "More about Rocky"
	Then I should see "Parkname"
	And I should see "Location"
	And I should see "Info"