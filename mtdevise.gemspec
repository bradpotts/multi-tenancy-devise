$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "mtdevise/version"

# Gem Specification Information
Gem::Specification.new do |spec|

  spec.name        = "mtdevise"
  spec.version     = Mtdevise::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["developers@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 5.2 Engine - MTDevise"
  spec.description = "MTDevise Rails 5.1 engine that adds multi-tenant basecamp style user logins (multi-tenant authetication using devise) to your ruby on rails application."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 5.2", ">= 5.2.4.3"
  spec.add_dependency "paper_trail", "~> 10.3"
  spec.add_dependency "pg", "~> 1.2"


  # UI & Frontend Dependencies
  spec.add_dependency "jquery-rails", "~> 4.4"
  spec.add_dependency "jquery-ui-rails", "~> 6.0"
  spec.add_dependency "sassc-rails", "~> 2.1"
  spec.add_dependency "webpacker", "~> 3.2"

  # UI & URL Frontend Dependencies Extras
  spec.add_dependency "country_select", "~> 4.0"
  spec.add_dependency "friendly_id", "~> 5.3"
  spec.add_dependency "gravtastic", "~> 3.2"

  # Upload & Media Dependencies
  spec.add_dependency "carrierwave", "~> 2.1"
  spec.add_dependency "cloudinary", "~> 1.14"

  # PHCEngine Helper Dependencies
  spec.add_dependency "phcnotifi", "~> 49.3"
  spec.add_dependency "phctitleseo", "~> 48.3"

  # WYSIWYG Editor Dependencies
  spec.add_dependency "tinymce-rails", "~> 5.3"

  # API Dependencies
  spec.add_dependency "multi_json", "~> 1.14"
  spec.add_dependency "oj", "~> 3.10"
  spec.add_dependency "rabl", "~> 0.14.3"
  spec.add_dependency "responders", "~> 3.0"

  # Admin Panel Theme Dependencies
  spec.add_dependency "phcadmin1", "~> 51.3"
  spec.add_dependency "phcadmin2", "~> 53.3"
  spec.add_dependency "phcadmin3", "~> 46.3"
  spec.add_dependency "phcadmin4", "~> 28.3"
  spec.add_dependency "phcadmin5", "~> 27.3"
  spec.add_dependency "phcadmin6", "~> 16.3"
  spec.add_dependency "phcadmin7", "~> 10.3"

  # Website Theme Dependencies
  spec.add_dependency "phctheme1", "~> 56.3"
  spec.add_dependency "phctheme2", "~> 45.3"
  spec.add_dependency "phctheme3", "~> 25.3"
  spec.add_dependency "phctheme4", "~> 23.3"
  spec.add_dependency "phctheme5", "~> 18.3"
  spec.add_dependency "phctheme6", "~> 11.3"
  spec.add_dependency "phctheme7", "~> 5.3"

  # Security Dependencies
  spec.add_dependency "devise", "~> 4.7"
  spec.add_dependency "houser", "~> 2.0"
  spec.add_dependency "simple_token_authentication", "~> 1.17"

  # Omniauth Authtication
  spec.add_dependency "omniauth-facebook", "~> 6.0"
  spec.add_dependency "omniauth-github", "~> 1.4"
  spec.add_dependency "omniauth-instagram", "~> 1.3"
  spec.add_dependency "omniauth-twitter", "~> 1.4"

  # Development & Testing Dependencies
  spec.add_development_dependency "sqlite3", "~> 1.4"
  spec.add_development_dependency "byebug", "~> 11.1"
  spec.add_development_dependency "capybara", "~> 3.32"
  spec.add_development_dependency "minitest", "~> 5.14"
  spec.add_development_dependency "rspec-rails", "~> 4.0"

  spec.add_development_dependency "factory_bot_rails", "~> 5.2"
  spec.add_development_dependency "faker", "~> 2.12"
  spec.add_development_dependency "launchy", "~> 2.5"

  # Extra Development Dependencies
  spec.add_development_dependency "nokogiri", "~> 1.10"
  spec.add_development_dependency "database_cleaner", "~> 1.8"
  spec.add_development_dependency "selenium-webdriver", "~> 3.142"

  # Extra Development & Testing Dependencies
  spec.add_development_dependency "letter_opener", "~> 1.7"
  spec.add_development_dependency "shoulda-matchers", "~> 4.3"
  spec.add_development_dependency "simplecov", "~> 0.18.5"

end
