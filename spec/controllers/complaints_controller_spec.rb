require 'rails_helper'

RSpec.describe ComplaintsController, type: :controller do

	describe 'add complaints using a form' do
		it 'should render the form to add complaints'
		it 'should submit the form to the controller and should add new complain'
		it 'should display success message and show page with details of the newcomplain'
	end

	describe 'check status of complaints' do
		it 'should render the list of all my complaints'
		it 'should render the update complaint form'
		it 'should submit the changes to the controller and save them'
		it 'should display a messages indicating success'
	end

	describe 'check status of complaints' do
		it 'should render a list of all my complaints'
		it 'should submit a query to the controller and get the status'
		it 'should display a message showing its current status'
	end

	describe 'check status of complaints' do
		it 'should render a list of all complaints'
		it 'should render the list of all departments'
		it 'should submit the chosen department to the controller and save the changes'
		it 'should display a "Complaint Forwarded" message'
	end

	describe 'check status of complaints' do
		it 'should render a list of all complaints'
		it 'should submit my request to delete to the controller and save the changes'
		it 'should show me a "Complaint Removed" message'
	end

	describe 'give feedback to complaint handling' do
		it 'should render the list of all my complaints'
		it 'should render the rate complaint form'
		it 'should submit the changes to the controller and save them'
		it 'should display a messages indicating success'
	end

	describe 'check status of complaints' do
		it 'should render a list of all my complaints'
		it 'should submit my query to the controller and record it'
	end

	describe 'upload picture of complaints' do
		it 'should render a list of all my complaints'
		it 'should submit a query to upload the picture to the controller'
		it 'should display a message showing picture was uploaded successfully'
	end
	
	describe 'report on complaints resolving method' do
		it 'should render a list of all complaints'
		it 'should submit a report to the controller of how the complaint was resolved'
		it 'should show me a "Report Added" message'
	end

end
