Feature: Workforce Statistics
	As a government administrator
	I want to know the workforce available
	In order to check the remaining workforce and dispatch them efficiently
	
	Scenario: Check available workforce
		Given I am on Admin page
		Then I should see amount of workforce available
		
	Scenario: Check workforce at work
		Given I am on Admin page
		And I should see amount of workforce at work
