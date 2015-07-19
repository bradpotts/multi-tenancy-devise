# require 'pry'
# require 'pry-nav'
require 'subengine/active_record_extensions'
require 'subengine/scoped_to'
require 'devise'
require 'houser'
require 'simple_form'
require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'
require 'rolify'
require 'simple_token_authentication'

module Subengine
  class Engine < ::Rails::Engine
    isolate_namespace Subengine

    initializer 'subengine.middleware.houser' do
      Rails.application.config.middleware.use Houser::Middleware,
        :class_name => 'Subengine::Account'
    end

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end

    config.to_prepare do
      root = Subengine::Engine.root
      extenders_path = root + "app/extenders/**/*.rb"
      Dir.glob(extenders_path) do |file|
        Rails.configuration.cache_classes ? require(file) : load(file)
      end
    end

  end
end
