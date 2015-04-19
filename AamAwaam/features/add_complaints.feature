Feature: Add Complaints
	In order fix the problems in my neighbourhood
	As a customer or layman
	I want to register complaints

Scenario: Add complaints using a form
	Given I am on the home page
	When I fill in "Description" with "No electricity"
	And I fill in "Location" with "Defence Phase 2"
	And I press "Complain"
	Then I should see "Successfully added complain"

Scenario: Add complaints through a map
	