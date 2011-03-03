Feature: edit-release
	As an employee of this record label
	I want to edit a release
	So that it displays correctly in the catalogue
	
Scenario:
	Given there is one release
	Given I am on the release list page
	When I follow "Edit"
	Then I should be on its edit release page
	
Scenario:
	Given there is one release
	Given I am on its edit release page
	And I fill in "Artist" with "Philip Jeck"
	And I fill in "Title" with "An Ark for the Listener"
	And I fill in "Description" with "Everyone loves Jeck"
	And I fill in "Duration" with "49:22"
	And I fill in "Catalogue Number" with "TO:82"
	When I press "Submit"
	Then I should be on the release list page
	And I should see "Philip Jeck"
	And I should see "An Ark for the Listener"
	And I should see "Everyone loves Jeck"
	And I should see "49:22"
	And I should see "TO:82"
	
Scenario:
	Given there is one release
	Given I am on the release list page
	When I follow "Delete"
	Then I should be on the release confirm destroy page
	And I should see "Are you sure you want to delete this release?"
	When I press "Delete"
	Then I should see "Release deleted"
	And I should see "There are no releases"
	And I should see "Would you like to add a release?"