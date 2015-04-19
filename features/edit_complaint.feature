Feature: User can update an existing complaint
	As a user
	So that I can keep the accurately provide information about my complaint
	I want to edit existing complaints and update them

	Scenario: Editing a complaint
		Given I am on user page
		Then I should see "edit" button next to my complaints
		When I go to "complaint edit page"
		And I fill in "updated description" with "editing my original complaint"
		And I press "save"
		Then I should be on the user page
		And I should see "Complaint Updated Successfully"