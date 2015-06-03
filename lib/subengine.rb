require "subengine/engine"
require 'devise'

module Subengine
	class Engine < ::Rails::Engine
		config.to_prepare do
			Devise::SessionsController.layout "layout_for_sessions_controller"
		end
	end
end