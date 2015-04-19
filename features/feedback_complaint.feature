Feature: Feedback to authorities
	As a user
	I want to rate and give feedback to the authorities 
	So that they can improve their services

	Scenario: User can rate or give feedback regarding how a complaint was resolved
		Given I am on my user page
		Then I should see "Rate/Feedback" button next to my complaints
		When I fill in "Rate/Feedback" with "sample feedback"
		Then I should see "Rating/Feedback recorded"