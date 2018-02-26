class Users::SessionsController < Devise::SessionsController
  

  def active_for_authentication?
    super do |resource|
       unless resource.active?
        sign_out
        # you can set flash message as well.
        redirect_to :sorry_not_active_url
        return
      end
    end
  end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
