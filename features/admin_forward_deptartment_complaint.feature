Feature: Administrator can forward complaint to department
	As a government administrator
	So I can send complaints to relevant department to be solved
	I want to forward complaints to other departments

	Scenario: Forwarding a complaint
		Given I am on Admin page
		Then I should see "forward" button next to the complaints
		When I press "forward"
		Then I should see a drop down of departments
		When I press a deparment name
		Then I should see "Complaint Forwarded"