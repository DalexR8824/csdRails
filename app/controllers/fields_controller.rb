class FieldsController < ApplicationController

	layout 'main'

	def new 
		
		@field = Field.new 
		
	end

	def create
	
		@field = Field.new(fields_params)

		if @field.save
			redirect_to edit_form_path(@field.form_id)
		else
			render 'new'
		end
		
	end

	def edit
		@field = Field.find(params[:id])
	end

	def update
		@field = Field.find(params[:id])

		if @field.update (fields_params)
			redirect_to edit_form_path(@field.form_id)
		else
			render 'update'
		end
		
	end

	def destroy
		@field = Field.find(params[:id])

		if @field.destroy
			flash[:notice] = "Campo eliminado correctamente"
			redirect_to edit_form_path(@field.form_id)
		else
			render 'new'
		end

		
	end




	private

	def fields_params
		params.require(:field).permit(:name, :slug, :description, :textDefault, :form_id)
		
	end

end
