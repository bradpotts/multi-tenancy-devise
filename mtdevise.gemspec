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
  spec.summary     = "Rails 5.1 Engine - MTDevise(5)"
  spec.description = "MTDevise(5) Rails 5.1 engine that adds multi-tenant basecamp style user logins (multi-tenant authetication using devise) to your ruby on rails application."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency 'rails', '~> 5.1', '>= 5.1.1'
  spec.add_dependency 'pg', '~> 0.20.0'
  spec.add_dependency 'paper_trail', '~> 7.0', '>= 7.0.2'

  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails', '~> 4.3', '>= 4.3.1'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
  spec.add_dependency 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.6'
  spec.add_dependency 'country_select', '~> 3.0'
  spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'
  spec.add_dependency 'webpacker', '~> 1.2'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails', '~> 4.6'

  # API Dependencies
  spec.add_dependency 'oj', '~> 3.0', '>= 3.0.7'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
  spec.add_dependency 'responders', '~> 2.4'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.1'
  spec.add_dependency 'cloudinary', '~> 1.8'

  # URL Dependencies
  spec.add_dependency 'friendly_id', '~> 5.2', '>= 5.2.1'

  # PHCEngine Dependencies
  spec.add_dependency 'phctitleseo', '~> 7.0'
  spec.add_dependency 'phcnotifi', '~> 6.0'

  # PHCTheme Dependencies
  spec.add_dependency 'phctheme1', '~> 14.0'
  spec.add_dependency 'phctheme2', '~> 5.0'

  # PHCAdmin Dependencies
  spec.add_dependency 'phcadmin1', '~> 10.0'
  spec.add_dependency 'phcadmin2', '~> 8.0'
  spec.add_dependency 'phcadmin3', '~> 5.0'

  # Security Dependencies
  spec.add_dependency 'devise', '~> 4.3'
  spec.add_dependency 'houser', '~> 2.0'
  spec.add_dependency 'simple_token_authentication', '~> 1.15', '>= 1.15.1'

  # Omniauth Authtication
  spec.add_dependency 'omniauth-facebook', '~> 4.0'
  spec.add_dependency 'omniauth-google-oauth2', '~> 0.4.1'
  spec.add_dependency 'omniauth-twitter', '~> 1.4'
  spec.add_dependency 'omniauth-instagram', '~> 1.0', '>= 1.0.2'
  spec.add_dependency 'omniauth-github', '~> 1.2', '>= 1.2.3'

  # Development & Testing Dependencies
  spec.add_development_dependency 'rspec-rails', '~> 3.6'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.8'
  spec.add_development_dependency 'capybara', '~> 2.14'
  spec.add_development_dependency 'nokogiri', '~> 1.7', '>= 1.7.2'

  spec.add_development_dependency 'byebug', '~> 9.0', '>= 9.0.6'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  spec.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.1'

  spec.add_development_dependency 'faker', '~> 1.7', '>= 1.7.3'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.4'

  # Extra Development & Testing Dependencies
  spec.add_development_dependency 'minitest', '~> 5.10', '>= 5.10.2'
  spec.add_development_dependency 'simplecov', '~> 0.14.1'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  spec.add_development_dependency 'letter_opener', '~> 1.4', '>= 1.4.1'

  # Temporary Security Fix
  spec.add_development_dependency 'mail', '~> 2.7.0.rc1'

end
