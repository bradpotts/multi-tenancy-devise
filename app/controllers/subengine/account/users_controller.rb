require_dependency "subengine/application_controller"

module subengine
  class Account::UsersController < ApplicationController
    def new
      @user = subengine::User.new
    end
    def create
      account = subengine::Account.find_by_subdomain!(request.subdomain)
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
