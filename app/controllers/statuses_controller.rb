class StatusesController < ApplicationController
	
	def new	
		@status = Status.new 
	end

	def create
		#render plain: params[:status].inspect
		@status = Status.new status_params
		@status.save

		redirect_to statuses_path
	end

	def show
		@status = Status.find params[:id]
	end

	def index
		@statuses = Status.all
	end

	def edit
		@status = Status.find params[:id]
	end

	def update
		@status = Status.find params[:id]
		@status.update status_params
		redirect_to statuses_path
	end







	private

	def status_params
		params.require(:status).permit(:name, :description)

	end

	
end
