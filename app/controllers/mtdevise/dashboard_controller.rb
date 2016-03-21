require_dependency "mtdevise/application_controller"

module Mtdevise
	class DashboardController < ApplicationController

		# Filters and 
		before_action :authenticate_user!
		layout "mtdevise/dashboard"

		# Define Dashboard Frontend Index
		def index
		end

	end
end
