Feature: Workforce feedback
	As a government administrator
	I want to know the feedback of the user regarding each complaint
	In order to give bonuses to the workforce or improve the overall service
	
	Scenario: View the aggregated ratings and feedbacks given by the user
		Given I am on Admin page
		Then I should see each member of the workforce
		When I click on a member
		Then I should see an agregated score calculated from each feedback given