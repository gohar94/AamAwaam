class ComplaintsController < ApplicationController

	layout "application"

	def index
		@complaints = Complaint.all
	end

	def new
		@complaint = Complaint.new
	end

	def create
		@complaint = Complaint.new(complaint_params)
		if @complaint.save
			puts "Done"
			redirect_to :action => 'index'
		else
			render('new')
		end
	end

	private

	def complaint_params
		params.require(:complaint).permit(:description, :authorID, :latitude, :longitude)
	end
end
