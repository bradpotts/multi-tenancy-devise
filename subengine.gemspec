$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subengine"
  s.version     = Subengine::VERSION
  s.authors     = ["BradPotts"]
  s.email       = ["bradley.j.potts@gmail.com"]
  s.homepage    = "http://www.coastdigitalgroup.com"
  s.summary     = "Multi-Tenancy Rails Engine with Subdomain Authetication Using Devise."
  s.description = "CoastDigitalGroup subengine gem adds multi-tenancy and additional user account management features to super secure rails devise authentication system. Users can now have multiple accounts, features subdomain data scoping, a central for all login page and sub-domain login pages. Subengine can be adapted to any project or start fresh with substarter multi-tenancy starter app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'pg'
  s.add_dependency 'rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'devise'
  s.add_dependency 'houser'
  s.add_dependency 'simple_form'
  s.add_dependency 'omniauth-facebook'
  s.add_dependency 'omniauth-google-oauth2'
  s.add_dependency 'omniauth-twitter'
  s.add_dependency 'omniauth-instagram'
  s.add_dependency 'omniauth-github'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'sass-rails'
  s.add_dependency 'rolify'

  # s.add_dependency 'pry'
  # s.add_dependency 'pry-nav'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'coveralls'

  s.add_development_dependency 'mailcatcher'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'

end
