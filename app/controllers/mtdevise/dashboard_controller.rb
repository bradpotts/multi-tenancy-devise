require_dependency "mtdevise/application_controller"

module Mtdevise
	class DashboardController < ApplicationController
		before_action :authenticate_user!
		layout "mtdevise/dashboard"

		def index
		end
	end
end