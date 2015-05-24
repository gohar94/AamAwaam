class UsersController < ApplicationController
	
	def index
		@users = User.sorted
	end

	def show
		@user = User.find(params[:id])
	end

	def find
		@users = User.search(params[:query])
	end

	def new
		@user = User.new
	end

	def create
		if params[:user][:password] != params[:user][:password_confirm]
			flash[:notice] = "Passwords don't match!"
			redirect_to(:action => 'new')
			return
		end
		
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "User created successfully!"
			redirect_to(:action => 'show', :id => @user.id)
		else
			flash[:notice] = "User could not be created!"
			redirect_to(:action => 'new')
		end
	end

	def update	
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:notice] = "User updated successfully!"
			redirect_to(:action => 'show', :id => @user.id)
		else
			render('edit')
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def delete
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id]).destroy
		flash[:notice] = "User '#{@user.email}' deleted successfully!"		
		redirect_to(:action => 'index')
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :user_type, :city)
	end
	
end