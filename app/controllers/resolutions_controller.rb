class ResolutionsController < ApplicationController
	layout 'main'

	def index
		@resolution = Resolution.all
	end

	def new
		@resolution = Resolution.new
	end

	def create
		@resolution = Resolution.new resolution_params
		@resolution.save
		redirect_to resolutions_path
	end

	def show
	end

	def edit
		@resolution = Resolution.find params[:id]
	end

	def update
		@resolution = Resolution.find params[:id]
		@resolution.update resolution_params
		redirect_to resolutions_path
	end



	private

	def resolution_params
		params.require(:resolution).permit(:name, :description, :active)
	end

end
