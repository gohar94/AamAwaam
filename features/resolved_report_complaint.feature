Feature: Complaint resolved report
	As a government administrator
	I want to record a report of each complaint
	In order to maintain a database of how each complaint was resolved


	Scenario: Administrator can submit a report of how the task was completed
		Given that I am on Admin page
		Then I should see "Submit Report" button next to the complaints
		When I press the "Submit Report" button
		Then I should be able to upload the report that gets saved in the database
		And I should see "Successfully Recorded"