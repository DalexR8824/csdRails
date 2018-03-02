class FormsController < ApplicationController

	layout 'main'

	def index
		@forms = Form.all
		
	end

	def new
		@form = Form.new
		
	end

	def create
		@form = Form.new(form_params)
		if @form.save 
			redirect_to forms_path
		else
			render 'new'
		end
		
	end

	def edit
		@form = Form.find(params[:id])
		@fields = @form.fields 
		
	end

	def update
		@form = Form.find(params[:id])

		if @form.update form_params
			redirect_to forms_path 
		else
			render 'edit'
		end
		
	end

	def addFields
		@field = Field.new 
		@addFields = params[:id]
		render '/fields/new'
		
	end


	private

	def form_params
		params.require(:form).permit(:name, :description, :typeForm, :code)
		
	end
end
