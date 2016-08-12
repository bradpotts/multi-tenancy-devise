module Mtdevise

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

		# Load Helpers
		helper Phctitleseo::Engine.helpers
		helper Phcnotifi::Engine.helpers

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
		def layouts_resolver_accounts
			case action_name
				when "index"
					"layouts/mtdevise/accountsindex"
				when "new"
					"layouts/mtdevise/signup"
			end
		end

		# Resolve Layouts for Custom User Actions
		def layouts_resolver_users
			case action_name
				when "new"
					"layouts/mtdevise/signup"
			end
		end

	end

end
