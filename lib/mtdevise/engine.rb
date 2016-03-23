# Load Required Dependencies
require 'mtdevise/active_record_extensions'
require 'mtdevise/scoped_to'

# Load Helper for Titles
require 'phctitler'

# Data and Accounts
require 'devise'
require 'houser'
require 'simple_token_authentication'
require 'simple_form'

# Frontend & UI
require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'
require 'font-awesome-rails'
require 'gravtastic'

module Mtdevise
	class Engine < ::Rails::Engine

    #Isolate Name
		isolate_namespace Mtdevise

    # Houser Gem
		initializer 'mtdevise.middleware.houser' do
			Rails.application.config.middleware.use Houser::Middleware, :class_name => 'Mtdevise::Account'
		end

    # Testing and Rspec
		config.generators do |g|
			g.test_framework :rspec, :view_specs => false
		end

		config.to_prepare do
			root = Mtdevise::Engine.root
			extenders_path = root + "app/extenders/**/*.rb"
			Dir.glob(extenders_path) do |file|
				Rails.configuration.cache_classes ? require(file) : load(file)
			end
		end

	end
end
