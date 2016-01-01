require_dependency "mtdevise/application_controller"

module Mtdevise
	class Account::UsersController < ApplicationController

	acts_as_token_authentication_handler_for User

		def new
			@user = Mtdevise::User.new
		end

		def create
			account = Mtdevise::Account.find_by_subdomain!(request.subdomain)
			user = account.users.create(user_params)
			sign_in user
			flash[:success] = "You have signed up successfully."
			redirect_to root_path
		end

		private

		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end

	end
end