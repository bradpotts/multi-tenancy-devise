# Load Required Dependencies
require 'mtdevise/active_record_extensions'
require 'mtdevise/scoped_to'

# Data and Accounts
require 'devise'
require 'houser'
require 'simple_token_authentication'

module Mtdevise
  class Engine < ::Rails::Engine

    # Main Dependencies
    require 'paper_trail'

		# PHCEngines & Theme Dependencies
    require 'phcnotifi'
    require 'phctitleseo'

    require 'phctheme1'
    require 'phctheme2'
    require 'phcadmin1'
    require 'phcadmin2'
    require 'phcadmin3'

    # UI & Frontend Dependencies
    require 'country_select'
    require 'gravtastic'
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'sass-rails'
    require 'webpacker'

    # API Dependencies
    require 'rabl'
    require 'oj'
    require 'multi_json'
    require 'responders'

    # Clean URLS
    require 'friendly_id'

    # WYSIWYG Editor Dependencies
    require 'tinymce-rails'

    # Upload & Media Dependencies
    require 'carrierwave'
    require 'cloudinary'

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

    # Load Helper Files
    config.to_prepare do
      ApplicationController.helper(ApplicationHelper)
      Phcnotifi::ApplicationController.helper(ApplicationHelper)
      Phctitleseo::ApplicationController.helper(ApplicationHelper)
    end

  end
end
