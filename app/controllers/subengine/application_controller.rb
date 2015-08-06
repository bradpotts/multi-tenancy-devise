module Subengine

# class ApplicationController < ActionController::Base
	class ApplicationController < ::ApplicationController

		protect_from_forgery with: :null_session

		def after_sign_in_path_for(resource)
			request.env['omniauth.origin'] || stored_location_for(resource) || subengine.accounts_path
		end
    
    # Starting to Add User Helpers
		def current_user?(user)
			user == current_user
		end
    helper_method :current_user

		private

		def redirect_logged_in_users_to_account_page
			redirect_to subengine.accounts_path if user_signed_in?
		end

	end
end
