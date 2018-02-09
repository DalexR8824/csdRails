class JobsController < ApplicationController

	before_action :authenticate_user!
	layout 'main'

	def index
		@jobs = Job.all
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
		if @job.save 
			redirect_to jobs_path
		else
			render :new
		end 
	end

	def edit
		@job = Job.find(params[:id])
		@listas = @job.agents.all.paginate(page: params[:page], per_page: 10).all
		@agent = Agent.all
		@leader = @job.users.all
		
	end

	def update
		@job = Job.find params[:id]
		@job.update job_params
		redirect_to edit_job_path
		
	end

	private

	def job_params
		params.require(:job).permit(:name, :description, agent_ids:[], user_ids:[])
	end


end
