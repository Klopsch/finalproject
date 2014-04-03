Feature: visit home page
	
	As a user
	I want to visit the home page

Scenario: visit home page
	Given I am on the home page
	And should see "Listing parks"
	And I should see "Parkname"
	And I should see "Location"
	And I should see "Info"