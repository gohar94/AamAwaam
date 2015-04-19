Feature: Status complaints
	As a user
	So that I can know the progress of my complaints
	I want to check the status of my complaints by clicking on them

	Scenario: User can check status of their complaints
		Given I am on user page
		And I click on a complaint
		Then I should see its status