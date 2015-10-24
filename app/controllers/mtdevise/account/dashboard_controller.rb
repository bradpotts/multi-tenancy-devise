require_dependency "mtdevise/application_controller"

module Mtdevise
	class Account::DashboardController < Mtdevise::ApplicationController
		layout "mtdevise/dashboard"
		before_action :authenticate_user!

		def index
		end

	end
end
