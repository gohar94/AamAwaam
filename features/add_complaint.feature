Feature: Add Complaints
	In order fix the problems in my neighbourhood
	As a customer or layman
	I want to register complaints

	Scenario: Add complaints using a form
		Given I am on the new complaints page
		When I fill in "Description" with "No electricity"
		And I fill in "Latitude" with "77"
		And I fill in "Longitude" with "78"
		And I press "Create"
		Then I should be on the complaints index page
		Then I should see "Successfully added complain"
