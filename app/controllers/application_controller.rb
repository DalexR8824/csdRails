class ApplicationController < ActionController::Base
	
  	protect_from_forgery with: :exception
  
  	before_action :configure_permitted_parameters, if: :devise_controller?
	protected

	def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :alias, :name, :lastName, :phone, :celPhone, :documentType, 
														:identificationNumber, :birthdate, :gender, :statusCivil, :numberChildren, 
														:personalMail, :personalMail, :address, :status, :password ])

	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :alias, :name, :lastName, :phone, :celPhone, :documentType, 
														:identificationNumber, :birthdate, :gender, :statusCivil, :numberChildren, 
														:personalMail, :personalMail, :address, :status, :password])
	end


 
end
