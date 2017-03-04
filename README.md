[![security](https://hakiri.io/github/PHCNetworks/multi-tenancy-devise/master.svg)](https://hakiri.io/github/PHCNetworks/multi-tenancy-devise/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/multi-tenancy-devise/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/multi-tenancy-devise)
[![Dependency Status](https://gemnasium.com/badges/github.com/PHCNetworks/multi-tenancy-devise.svg)](https://gemnasium.com/github.com/PHCNetworks/multi-tenancy-devise)
[![Gem Version](https://badge.fury.io/rb/mtdevise.svg)](https://badge.fury.io/rb/mtdevise)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/PHCNetworks/multi-tenancy-devise/blob/master/MIT-LICENSE)
  
### Mtdevise(3) (MultiTenancyDevise) Documentation  
PHC mtdevise gem adds multi-tenant and account management features to rails Devise gem. Plataformatec Devise and required custom Bootstrap Devise views included.  
  
* Multi-tenancy using subdomain scoping and account_id column.  
* Adds basecamp style logins to devise authentication gem.  
* Welcome, Dashboard with custom Devise views included.  
* Highly customizable views and layouts using standard bootstrap 3 code.  
* Central login screen for all tenants (users) or logins through a subdomain.  
* Mis-Spelling and redirect to welcome screen if subdomain none-existent.  
* Compatible with postgre, mysql and sqlite (for dev environments).  
  
#### Step 1 - Add user model to your app (Must be Done First!!)
Generate a user.rb file in your mainapp and add the code below 

	rails g model User
	include Mtdevise::UserStorage
  
#### Step 2 - Add Mtdevise to your gemfile and run command  
  
	gem 'mtdevise', '~> 3.10'
	bundle exec install

#### Step 3 - Add and migrate mtdevise database tables
  
	rake railties:install:migrations
	rake db:migrate
  
#### Step 4 - Configure ActionMailer
* Mailer functions are required in order for mtdevise to operate.
* Mailer is used for confirmation and password reset functions.
  
#### Step 5 - Mount the Engine in your Routes File
Add this line at the end of the routes file.  
  
	mount Mtdevise::Engine, :at => '/'
  
#### Step 6 - Constrain the routs you want secured
All the routes you want to have multi-tenacy login functions goes in between the constraints block.
  
	constraints(Mtdevise::Constraints::SubdomainRequired) do
		# Routes Requiring Security & Multi-Tenancy Routes  
	end
  
#### Step 7 - Modifications to MainApp Controllers & Database  
Your app needs modification to [controllers (example)](https://github.com/PHCNetworks/multi-tenancy-devise/wiki/Scoped-Controller-Example)  
Any corresponding db database tables must have an accounts_id column
  
	accounts_id
  
#### Step 8 - Add mtdevise extension to models  
Add the mtdevise extension to the top of all models for the routes configured in the previous step.  
  
	def self.scoped_to(account)
		where(:account_id => account.id)
	end
  
#### Step 9 - Configure scopes in your controller
Scope your controllers. Examples on github wiki or multi-tenant starter app.

	.scoped_to(current_account)
  
#### Step 10 - Environment (ENV) Variables
Set a sent from email address for confirmation and password reset emails [more info here.](https://github.com/PHCNetworks/multi-tenancy-devise/wiki/ENV---Environment-Variables)  .  
  
	PHC_MTDEVISE_SENDER = no_reply@example.com
  
### Additional Information  
  
#### Views - Mtdevise Views Can be Customized  
Once installed views can be generated and customized to your apps needs.  
  
	rails generate mtdevise:views
	rake assets:clobber
	rake assets:precompile
  
#### Having troubles ?  
[Multi-Tenant Starter App](https://github.com/PHCNetworks/multi-tenancy-starter-devise)  
[Documentation (Github Wiki)](https://github.com/PHCNetworks/multi-tenancy-devise/wiki)  
[Environment Variables](https://github.com/PHCNetworks/multi-tenancy-devise/wiki/ENV---Environment-Variables)  
[Issues & Bug Reports](https://github.com/PHCNetworks/multi-tenancy-devise/issues)  
[Past Security Patch Notes](https://github.com/PHCNetworks/multi-tenancy-devise/wiki/Critical-Security-Updates)  
[Managed by PHCNetworks](http://phcnetworks.net)  
  
[![Circle CI](https://circleci.com/gh/PHCNetworks/multi-tenancy-devise/tree/master.svg?style=svg)](https://circleci.com/gh/PHCNetworks/multi-tenancy-devise/tree/master)

