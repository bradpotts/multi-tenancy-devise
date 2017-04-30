$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "mtdevise/version"

# Gem Specification Information
Gem::Specification.new do |spec|

  spec.name        = "mtdevise"
  spec.version     = Mtdevise::VERSION
  spec.authors     = ["BradPotts"]
  spec.email       = ["info@phcnetworks.net"]
  spec.homepage    = "https://phcnetworks.net/"
  spec.summary     = "Multi-Tenant Rails Engine Using Devise"
  spec.description = "mtdevise(3) adds multi-tenant basecamp style user logins (multi-tenant authetication using devise) to your ruby on rails application."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency 'rails'
  spec.add_dependency 'pg'
  spec.add_dependency 'paper_trail'

  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'jquery-ui-rails'

  spec.add_dependency 'bootstrap-sass'
  spec.add_dependency 'font-awesome-rails'
  spec.add_dependency 'sass-rails'

  spec.add_dependency 'country_select'
  spec.add_dependency 'gravtastic'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails'

  # API Dependencies
  spec.add_dependency 'oj'
  spec.add_dependency 'rabl'
  spec.add_dependency 'multi_json'
  spec.add_dependency 'responders'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave'
  spec.add_dependency 'cloudinary'

  # URLS
  spec.add_dependency 'friendly_id'

  # PHCEngine Dependencies
  spec.add_dependency 'phctitleseo'
  spec.add_dependency 'phcnotifi'
  spec.add_dependency 'phcpresspro'

  # PHCTheme Dependencies
  spec.add_dependency 'phctheme1'
  spec.add_dependency 'phctheme2'

  # PHCAdmin Dependencies
  spec.add_dependency 'phcadmin1'
  spec.add_dependency 'phcadmin2'
  spec.add_dependency 'phcadmin3'

  # Security Dependencies
  spec.add_dependency 'devise'
  spec.add_dependency 'houser'
  spec.add_dependency 'simple_token_authentication'

  # Omniauth Authtication
  spec.add_dependency 'omniauth-facebook'
  spec.add_dependency 'omniauth-google-oauth2'
  spec.add_dependency 'omniauth-twitter'
  spec.add_dependency 'omniauth-instagram'
  spec.add_dependency 'omniauth-github'

  # Development & Testing Dependencies
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_girl_rails'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'byebug'

  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'database_cleaner'

  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'launchy'
  spec.add_development_dependency 'selenium-webdriver'

  # Extra Development & Testing Dependencies
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'letter_opener'

end
