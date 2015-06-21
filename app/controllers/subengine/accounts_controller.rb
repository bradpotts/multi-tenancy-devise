require_dependency "subengine/application_controller"

module subengine
  class AccountsController < ApplicationController

    before_action :redirect_if_coming_form_sign_up, only: :new
    before_action :authenticate_user!, except: [:new, :create]

    def index
      @accounts = current_user.accounts
    end

    def new
      @account = subengine::Account.new
      @account.build_owner unless user_signed_in?
    end

    def create
      account = if user_signed_in?
          subengine::Account.create(account_params)
        else
          subengine::Account.create_with_owner(account_params)
        end
      @account = account
      if account.valid?
        flash[:success] = "Your account has been successfully created."
        if user_signed_in?
          account.owner = current_user
          account.users << current_user
          account.save
          account.owner.add_role :admin, account
          redirect_to subengine.accounts_path
        else
          account.owner.add_role :admin, account
          sign_in account.owner
          redirect_to subengine.root_url(:subdomain => account.subdomain)
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

    def account_params
      params.require(:account).permit(:name, :subdomain, { :owner_attributes => [
        :email, :password, :password_confirmation
      ]})
    end

  end
end
