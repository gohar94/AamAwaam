Feature: Administrator can mark a complaint as spam
	As a government administrator
	So I can filter out spam/junk complaints
	I want to be to mark complaints as spam and delete them

Scenario: Marking a complaint as spam
	Given that I am on my admin page
	Then I should see a "Mark as spam" button next to the complaints
	When I click on the "Mark as spam" button
	Then I should not see the complaint
	And I should see a "Complaint Removed" message