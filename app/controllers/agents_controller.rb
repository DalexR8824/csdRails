class AgentsController < ApplicationController

	before_action :authenticate_user!
	layout 'main' 


	def index
		@agents = Agent.all
	end

	def new
		@agent = Agent.new
	end

	def create
		@agent = Agent.new(agent_params)
		if @agent.save 
			flash[:notice] = "Lista creada correctamente"
			redirect_to agents_path
		else
			render :new
		end
	end

	def edit
		@agent = Agent.find(params[:id])
		@lista_usuarios = @agent.users.where(status: 'activo').paginate(page: params[:page], per_page: 10).all
		@users = User.where(status: 'activo')

	end

	def update
		@agent = Agent.find params[:id]
		@agent.update agent_params
		redirect_to edit_agent_path
	end


	private

	def agent_params
		params.require(:agent).permit(:name, :description, user_ids:[])
	end



end
