class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_perameters
  
  protected
  
  def configure_permitted_perameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname])
  
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
    end
  end
end