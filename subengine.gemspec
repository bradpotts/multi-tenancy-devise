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

	# Main Dependencies
	s.add_dependency "rails", "~> 4.2.2"
	s.add_dependency "pg"

	# Authetication
	s.add_dependency "devise", "3.5.1"

	# Testing Dependencies
	s.add_development_dependency "rspec-rails", "3.3.1"
	s.add_development_dependency "capybara", "2.4.4"
	s.add_development_dependency "sqlite3"

end