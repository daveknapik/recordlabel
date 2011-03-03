Feature:
	As any user of this application
	I want to view an artist
	So that I can read all of his or her details
	
Scenario:
	Given there is one artist
	Given I am on the release list page
	When I follow the artist name
	Then I should be on the artist page
	And I should see the artist name
	And I should see the artist bio
	And I should see the artists releases