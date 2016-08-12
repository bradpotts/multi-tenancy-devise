require_dependency "mtdevise/application_controller"

module Mtdevise
	class Account::DashboardController < Mtdevise::ApplicationController
		
		# Filters & Layouts
		layout "mtdevise/dashboard"
		before_action :authenticate_user!

		# User Dashboard Backend
		def index
		end

	end
end
