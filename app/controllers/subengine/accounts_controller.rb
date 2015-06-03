require_dependency "subengine/application_controller"

module Subengine
	class AccountsController < ApplicationController
		def new 
			@account = Subengine::Account.new
		end

		def create 
			account = Subengine::Account.create(account_params)
			flash[:success] = "Your account has been successfully created."
			redirect_to subengine.root_url
		end
		private 
		def account_params
			params.require(:account).permit(:name)
		end
	end
end