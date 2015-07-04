$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subengine"
  s.version     = Subengine::VERSION
  s.authors     = ["Brad Potts"]
  s.email       = ["bradley.j.potts@gmail.com"]
  s.homepage    = "http://www.coastdigitalgroup.com"
  s.summary     = "Multi-Tenancy Rails Engine with basecamp style subdomain login"
  s.description = "Multi-Tenancy Rails Engine using Devise for Authetication."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'pg', '~> 0.18.2'
  s.add_dependency 'rails'
  s.add_dependency 'jquery-rails', '~> 4.0.4'
  s.add_dependency 'devise', '~> 3.5.1'
  s.add_dependency 'houser', '~> 2.0.0'
  s.add_dependency 'simple_form'
  s.add_dependency 'slim'
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
