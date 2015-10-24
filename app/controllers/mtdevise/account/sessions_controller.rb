# require_dependency "mtdevise/application_controller"

# module Mtdevise
#   class Account::SessionsController < Mtdevise::ApplicationController
#     def new
#       @user = User.new
#     end
#     def create
#       if env["warden"].authenticate(:scope => :user)
#         flash[:notice] = "You are now signed in."
#         redirect_to root_path
#       else
#         @user = User.new
#         flash[:error] = "Invalid email or password."
#         render :action => "new"
#       end
#     end
#   end
# end
