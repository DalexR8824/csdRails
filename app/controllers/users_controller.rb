class UsersController < ApplicationController
	layout 'main'

	def new	
		@user = User.new 
	end

	def create
		#render plain: params[:status].inspect
		@user = User.new status_params
		@user.save

		redirect_to statuses_path
	end

	def edit
		@user = User.find params[:id]
	end

	def show
		#@user = User.find params[:id]
	end

	def index
		@users = User.all
	end

end
