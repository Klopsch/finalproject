Feature: User can view park information

	As a user
	I want to view park information

Scenario: view park info
	Given I am on the home page 
	Then I should see "Parkname"
	And I should see "Location"
	And I should see "Info"