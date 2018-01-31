class RolesController < ApplicationController
	before_action :authenticate_user!
	layout 'main'


	def index
		@role = Role.all
	end

	def new
		@role = Role.new
		@users = User.all
	end

	def create

		@role = Role.new(role_params)
	    if @role.save
	      flash[:notice] = 'Role creado correctamente'
	      redirect_to roles_path
	    else
	      render :new
	    end

	end 

	def edit
		@role = Role.find params[:id]
	end

	def update
		@role = Role.find params[:id]
		@role.update role_params
		redirect_to roles_path
	end

	private

	def role_params
		params.require(:role).permit(:name, :description, :users, user_ids:[])
	end





end
