Feature: Visuals
	As a government administrator
	I want to add a picture to resolved complaints
	In order to show a visual evidence of successful resolution of the complaint for the general public to see

	Scenario: Add a picture to the resolved complaints
		Given I am on admin page page
		And I click on a complaint
		Then I should see a "add picture" button
		When I press the "add picture" button
		Then I should be able to upload a picture of the area for where the complaint was issued
