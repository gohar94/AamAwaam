require 'rails_helper'

RSpec.describe ComplaintsController, type: :controller do

	# describe 'add complaints using a form' do
	# 	it 'should render the form to add complaints'
	# 	it 'should submit the form to the controller and should add new complain'
	# 	it 'should display success message and show page with details of the newcomplain'
	# end

	describe 'add_new_complaint' do
		before :each do
			@complaint = Complaint.new(:description => 'Too much garbage!')
			@complaint.save
		end

		it 'should add my new complaint' do
			Complaint.last.should == @complaint
		end
	end

	# describe 'check status of complaints' do
	# 	it 'should render the list of all my complaints'
	# 	it 'should render the update complaint form'
	# 	it 'should submit the changes to the controller and save them'
	# 	it 'should display a messages indicating success'
	# end

	# describe 'give feedback to complaint handling' do
	# 	it 'should render the list of all my complaints'
	# 	it 'should render the rate complaint form'
	# 	it 'should submit the changes to the controller and save them'
	# 	it 'should display a messages indicating success'
	# end

	# describe 'upload picture of complaints' do
	# 	it 'should render a list of all my complaints'
	# 	it 'should submit a query to upload the picture to the controller'
	# 	it 'should display a message showing picture was uploaded successfully'
	# end
	
	# describe 'report on complaints resolving method' do
	# 	it 'should render a list of all complaints'
	# 	it 'should submit a report to the controller of how the complaint was resolved'
	# 	it 'should show me a "Report Added" message'
	# end

end