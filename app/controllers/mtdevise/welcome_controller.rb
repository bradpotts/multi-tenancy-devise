require_dependency "mtdevise/application_controller"

module Mtdevise
	class WelcomeController < ApplicationController
		layout "mtdevise/welcome"   
		before_action :authenticate_user!, except: [:index]
		before_action :redirect_logged_in_users_to_account_page

		def index
		end
	end
end