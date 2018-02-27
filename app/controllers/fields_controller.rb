class FieldsController < ApplicationController

	layout 'main'

	def new
		@field = Field.new 
		
	end


	private

	def form_params
		params.require(:field).permit(:name, :description)
		
	end

end
