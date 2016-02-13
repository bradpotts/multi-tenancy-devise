module Mtdevise

# class ApplicationController < ActionController::Base
	class ApplicationController < ::ApplicationController

		# Secirity and Filters
		protect_from_forgery with: :null_session
		before_action :check_subdomain

		# Omniauth
		def after_sign_in_path_for(resource)
			request.env['omniauth.origin'] || stored_location_for(resource) || mtdevise.accounts_path
		end

		# Helpers for Current Account and Users
		def current_user?(user)
			user == current_user
		end
		helper_method :current_user

		def current_account?(account)
			account == current_account
		end
		helper_method :current_account

		private

		# Logged in redirect
		def redirect_logged_in_users_to_account_page
			redirect_to mtdevise.accounts_path if user_signed_in?
		end

		# Subdomain Checker
		def check_subdomain
			if request.subdomain.present? && Account.where(subdomain: request.subdomain).blank?
				redirect_to mtdevise.root_url(subdomain: false), notice: "Subdomain Doesn't Exist. Would you like to Register."
			end
		end

		# Resolve Layouts for Custom Account Actions
		def layouts_rsolver
			case action_name
				when "index"
					"layouts/mtdevise/accountsindex"
				when "new"
					"layouts/mtdevise/signup"
			end
		end

		# Resolve Layouts for Devise Actions
		config.to_prepare do
			Devise::SessionsController.layout "layouts/mtdevise/accounts"
			Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "layouts/mtdevise/useredit" }
			Devise::RegistrationsController.layout "layouts/mtdevise/registration"
			Devise::ConfirmationsController.layout "layouts/mtdevise/accounts"
			Devise::UnlocksController.layout "layouts/mtdevise/accounts"
			Devise::PasswordsController.layout "layouts/mtdevise/accounts"
		end

	end

end
