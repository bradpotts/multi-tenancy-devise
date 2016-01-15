require_dependency "mtdevise/application_controller"

module Mtdevise
	class AccountsController < ApplicationController

		layout :resolve_accounts_layout

		before_action :redirect_if_coming_form_sign_up, only: :new
		before_action :authenticate_user!, except: [:new, :create]

		def index
			@accounts = current_user.accounts
		end

		def new
			@account = Mtdevise::Account.new
			@account.build_owner unless user_signed_in?
		end

		def create
			account = if user_signed_in?
			Mtdevise::Account.create(account_params)
			else
				Mtdevise::Account.create_with_owner(account_params)
			end
		
			@account = account
			if account.valid?
				flash[:success] = "Your account has been successfully created."

			if user_signed_in?
				account.owner = current_user
				account.users << current_user
				account.save
				account.owner.add_role :admin, account
				redirect_to mtdevise.accounts_path

			else
				account.owner.add_role :admin, account
				sign_in account.owner
				redirect_to mtdevise.root_url(:subdomain => account.subdomain)
			end

			else
				flash[:error] = "Sorry, your account could not be created."
				render :new
			end

		end

		private

		def redirect_if_coming_form_sign_up
			redirect_to accounts_path if request.url =~ /#{sign_up_path}/ && user_signed_in?
		end

		def resolve_accounts_layout
			case action_name
				when "index"
        "mtdevise/accountsindex"
				else
					"mtdevise/accounts"
			end
		end

		def account_params
			params.require(:account).permit(:name, :firstname, :lastname, :username, :subdomain, { :owner_attributes => [:email, :password, :password_confirmation]})
		end

	end
end