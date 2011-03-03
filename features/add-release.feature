Feature: add-release
	As an employee of this record label
	I want to add a release
	So that it is in the catalogue
	
Scenario:
	Given I go to the new release page
	And I fill in "Title" with "Endless Summer"
	And I fill in "Description" with "Everyone I ever met loves this album"
	And I fill in "Duration" with "59:22"
	And I fill in "Catalogue Number" with "TO:55"
	When I press "Submit"
	Then I should be on the release list page
	And I should see "Endless Summer"
	And I should see "Everyone I ever met loves this album"
	And I should see "59:22"
	And I should see "TO:55"
	
Scenario:
	Given I go to the new release page
	And I fill in "Title" with "Endless Summer"
	And I fill in "Description" with "Everyone I ever met loves this album"
	When I press "Submit"
	Then I should be on the release list page
	And I should see "Endless Summer"
	And I should see "Everyone I ever met loves this album"
	And I should not see "Duration:"
	And I should not see "Catalogue Number:"