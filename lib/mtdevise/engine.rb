require 'mtdevise/active_record_extensions'
require 'mtdevise/scoped_to'

require 'devise'
require 'houser'
require 'simple_form'

require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'
require 'font-awesome-rails'
require 'gravtastic'
require 'phcnotifi'

require 'simple_token_authentication'

module Mtdevise
	class Engine < ::Rails::Engine
		isolate_namespace Mtdevise

		initializer 'mtdevise.middleware.houser' do
			Rails.application.config.middleware.use Houser::Middleware, :class_name => 'Mtdevise::Account'
		end

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
