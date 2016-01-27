$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mtdevise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|

	s.name        = "mtdevise"
	s.version     = Mtdevise::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["brad.potts@phcnetworks.net"]
	s.homepage    = "http://www.phcnetworks.net"
	s.summary     = "Multi-Tenant Rails Engine Using Devise."
  s.description = "mtdevise adds basecamp style user logins (multi-tenant authetication) to your ruby on rails application."

	s.license     = "MIT"
	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
	s.test_files = Dir["spec/**/*"]

	s.add_dependency 'pg', '~> 0.18.4'
	s.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'

	s.add_dependency 'devise', '~> 3.5', '>= 3.5.4'
	s.add_dependency 'houser', '~> 2.0'
	s.add_dependency 'simple_form', '~> 3.2', '>= 3.2.1'
	s.add_dependency 'simple_token_authentication', '~> 1.12'

	# Omniauth Authtication 
	s.add_dependency 'omniauth-facebook', '~> 3.0'
	s.add_dependency 'omniauth-google-oauth2', '~> 0.3.0'
	s.add_dependency 'omniauth-twitter', '~> 1.2', '>= 1.2.1'
	s.add_dependency 'omniauth-instagram', '~> 1.0', '>= 1.0.2'
	s.add_dependency 'omniauth-github', '~> 1.1', '>= 1.1.2'

	# UI and Frontend Elements
	s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	s.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	s.add_dependency 'font-awesome-rails', '~> 4.5'
	s.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	s.add_dependency 'rolify', '~> 5.0'
	s.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

	# s.add_dependency 'pry'
	# s.add_dependency 'pry-nav'

	s.add_development_dependency 'minitest', '~> 5.8', '>= 5.8.4'
	s.add_development_dependency 'simplecov', '~> 0.11.0'
	s.add_development_dependency 'coveralls', '~> 0.8.10'

	s.add_development_dependency 'mailcatcher', '~> 0.6.2'
	s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
	s.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.1'
	s.add_development_dependency 'shoulda-matchers', '~> 3.1'
	s.add_development_dependency 'factory_girl', '~> 4.5'
	s.add_development_dependency 'rspec-rails', '~> 3.4', '>= 3.4.1'
	s.add_development_dependency 'capybara'

	s.add_development_dependency 'quiet_assets', '~> 1.1'
	s.add_development_dependency 'letter_opener', '~> 1.4', '>= 1.4.1'
	s.add_development_dependency 'pry', '~> 0.10.3'

end