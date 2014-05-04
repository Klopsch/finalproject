Feature: View Park attractions

	As a user
	I want to view park attractions

Scenario: view park attractions
	Given I am on the home page 
	And I follow "More about Fakeland"
	Then I should be on the park information page
	And I should see "Main Park Attractions"
	