Feature: Rate Park attractions

	As a user
	I want to rate park attractions

Scenario: rate park attractions
	Given I am on the home page 
	And I follow "More about Fakeland"
	Then I should be on the park information page
	And I should see "Main Park Attractions"
	Then I follow "Rate Park Attraction"
	When I check "1"
	Then I follow "Submit"
	And I should see "Rating Submitted"
	