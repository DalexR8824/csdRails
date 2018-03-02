class FlowsController < ApplicationController
	before_action :authenticate_user!
	layout 'main'
	
	def index
		@flow = Flow.where(status: 'activo')
	end

	def new
		@flow = Flow.new
	end

	def create 
		@flow = Flow.new flows_params
		@flow.save

		redirect_to flows_path
	end

	def edit
		@flow = Flow.find params[:id]
		@statuses = Status.all
		@state = @flow.statuses.all


	end

	def update
		@flow = Flow.find params[:id] 
		@flow.update flows_params

		redirect_to edit_flow_path
	end

	def destroy
		@flow = Flow.find params[:id]
		@flow.update({status: 'inactivo'})
		redirect_to flows_path
	end




	private


	def flows_params
		params.require(:flow).permit(:name, :description, status_ids:[])
	end





end
