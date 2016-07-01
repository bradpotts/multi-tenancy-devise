$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mtdevise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|

	spec.name        = "mtdevise"
	spec.version     = Mtdevise::VERSION
	spec.authors     = ["BradPotts"]
	spec.email       = ["developers@phcnetworks.net"]
	spec.homepage    = "https://www.phcnetworks.net/"
	spec.summary     = "Multi-Tenant Rails Engine Using Devise."
	spec.description = "mtdevise(3) adds multi-tenant basecamp style user logins (multi-tenant authetication using devise) to your ruby on rails application."
	spec.license     = "GPL-3.0"

	spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
	spec.test_files = Dir["spec/**/*"]

	# Main Dependencies
	spec.add_dependency 'rails', '~> 4.2', '>= 4.2.6'
	spec.add_dependency 'phcnotifi', '~> 2.6', '>= 2.6.5'
	spec.add_dependency 'phctitleseo', '~> 2.0'
	spec.add_dependency 'pg', '~> 0.18.4'

	# Security & Forms
	spec.add_dependency 'devise', '~> 4.1', '>= 4.1.1'
	spec.add_dependency 'houser', '~> 2.0'
	spec.add_dependency 'simple_token_authentication', '~> 1.13'

	# Omniauth Authtication
	spec.add_dependency 'omniauth-facebook', '~> 3.0'
	spec.add_dependency 'omniauth-google-oauth2', '~> 0.4.1'
	spec.add_dependency 'omniauth-twitter', '~> 1.2', '>= 1.2.1'
	spec.add_dependency 'omniauth-instagram', '~> 1.0', '>= 1.0.2'
	spec.add_dependency 'omniauth-github', '~> 1.1', '>= 1.1.2'

	# UI & Frontend Elements
	spec.add_dependency 'jquery-rails', '~> 4.1', '>= 4.1.1'
	spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	spec.add_dependency 'font-awesome-rails', '~> 4.5', '>= 4.5.0.1'
	spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

	# Development & Testing Dependencies
	spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
	spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.1'

	spec.add_development_dependency 'factory_girl_rails', '~> 4.7'
	spec.add_development_dependency 'rspec-rails', '~> 3.4', '>= 3.4.2'
	spec.add_development_dependency 'capybara', '~> 2.7'

	spec.add_development_dependency 'better_errors', '~> 2.1', '>= 2.1.1'
	spec.add_development_dependency 'binding_of_caller', '~> 0.7.2'

	spec.add_development_dependency 'faker', '~> 1.6', '>= 1.6.3'
	spec.add_development_dependency 'selenium-webdriver', '~> 2.53'

	# Extra Development & Testing Dependencies
	spec.add_development_dependency 'minitest', '~> 5.8', '>= 5.8.4'
	spec.add_development_dependency 'simplecov', '~> 0.11.2'

	spec.add_development_dependency 'mailcatcher', '~> 0.6.4'
	spec.add_development_dependency 'letter_opener', '~> 1.4', '>= 1.4.1'

	spec.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
	spec.add_development_dependency 'quiet_assets', '~> 1.1'
	spec.add_development_dependency 'pry', '~> 0.10.3'

end
