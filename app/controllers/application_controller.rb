class ApplicationController < ActionController::Base
	
  protect_from_forgery with: :exception
  
  	before_action :configure_permitted_parameters, if: :devise_controller?
	protected

	def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastName, :phone, :celPhone, :documentType , :identificationNumber , 
														:birthdate, :gender, :statusCivil, :numberChildren, :personalMail,
														 :address, :status, :alias, :mail ])
	devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastName, :phone, :celPhone, :documentType , :identificationNumber , 
														:birthdate, :gender, :statusCivil, :numberChildren, :personalMail,
														 :address, :status, :alias, :mail])
	end


 
end
