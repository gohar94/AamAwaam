class ComplaintsController < ApplicationController

	def index
		@complaints = Complaint.all
		respond_to do |format|
			format.json { render :json => @complaints }
			format.html
		end
	end

	def new
		@complaint = Complaint.new
	end

	def create
		@complaint = Complaint.new(complaint_params)
		if @complaint.save
			flash[:notice] = "Successfully added complain"
			redirect_to :action => 'index'
		else
			render('new')
		end
	end

	def showStatus
		@complaint = Complaint.find(params[:id])
		flash[:notice] = "The complaint " + @complaint.description + " is " +  @complaint.status
		redirect_to :action => 'index'
	end

	private

	def complaint_params
		params.require(:complaint).permit(:description, :authorID, :latitude, :longitude)
	end
end
