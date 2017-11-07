class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :sanitize_devise_parameters, if: :devise_controller?

	def sanitize_devise_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:username])
		#faire en sorte que l'update de compte soit prise en compte
		devise_parameter_sanitizer.permit(:account_update, keys:[:username])
	end

#ajouter une limitation d'accès au site
# after_action :verify_authorized, unless: :devise_controller?

# protected

# def configure_permitter_parameters
# 	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
#         :anonymous_username, 
#         :email, 
#         :password, 
#         :password_confirmation, 
#         :remember_me, 
#         :sign_up_code
#     ) }
#   end
end
