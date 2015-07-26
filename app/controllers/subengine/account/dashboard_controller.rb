require_dependency "subengine/application_controller"

module Subengine
	class Account::DashboardController < Subengine::ApplicationController
		layout "subengine/dashboard"
		before_action :authenticate_user!

		def index
		end

	end
end
