Feature: view-release
	As any user of this application
	I want to view a release
	So that I can read all of its details
	
Scenario:
	Given there is one release
	Given I am on the release list page
	When I follow the release title
	Then I should be on the release page
	And I should see the release title
	And I should see the release description