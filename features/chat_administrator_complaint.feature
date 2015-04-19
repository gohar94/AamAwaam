Feature: Chat with administrator
	As a user
	I want to enquire about a complaint using a chat or message
	So that if I have a query regarding a complaint, they can be resolved

	Scenario: User can contact the online help if he/she wishes to enquire about the complaint
		Given I am on user page
		And I click on a complaint
		Then I should see "Query" button
		When I click the "Query" button, I should be connected to a helpline
		And I should be able to chat with an administrator regarding the complaint