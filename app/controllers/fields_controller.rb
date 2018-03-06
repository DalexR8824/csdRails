class FieldsController < ApplicationController

	layout 'main'

	def new 
		
		@field = Field.new 

		
	end

	def create
	
		@field = Field.new(fields_params)

		if @field.save 
			flash[:notice] = "Campo creado correctamente"
			redirect_to edit_form_path(@field.form_id)
		else
	
			flash[:notice] = "No se puede guardar"
		end
		
	end

	def edit
		@field = Field.find(params[:id])
	end

	def update
		@field = Field.find(params[:id])

		if @field.update (fields_params)
			flash[:notice] = "Campo editado correctamente"
			redirect_to edit_form_path(@field.form_id)
		else
			render 'edit'
			puts @field.errors.full_messages
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
		params.require(:field).permit(:name, :slug, :description, :textDefault, :form_id, :type_field_id)
		
	end

end
