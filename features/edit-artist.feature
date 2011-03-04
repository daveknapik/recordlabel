Feature:
	As an employee of this record label
	I want to edit an artist
	So that it displays correctly in the catalogue
	
Scenario:
	Given there is one artist
	Given I am on the artist page
	When I follow "Edit"
	Then I should be on its edit artist page
	
Scenario:
	Given there is one artist
	Given I am on its edit artist page
	And I fill in "Name" with "Sohrab"
	And I fill in "Bio" with "Another rather talented chap"
	When I press "Submit"
	Then I should be on the artist page
	And I should see "Sohrab"
	And I should see "Another rather talented chap"