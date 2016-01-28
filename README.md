[![security](https://hakiri.io/github/PHCNetworks/multi-tenancy-devise/master.svg)](https://hakiri.io/github/PHCNetworks/multi-tenancy-devise/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/multi-tenancy-devise/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/multi-tenancy-devise)
[![Build Status](https://travis-ci.org/PHCNetworks/multi-tenancy-devise.svg?branch=master)](https://travis-ci.org/PHCNetworks/multi-tenancy-devise)
[![Gem Version](https://badge.fury.io/rb/mtdevise.svg)](https://badge.fury.io/rb/mtdevise)

##### Please Update to Latest Version: 1.7.8 ships with a critical security patches. [Please see security notes for help.](https://github.com/PHCNetworks/multi-tenancy-devise/wiki/Critical-Security-Updates)  

### Mtdevise (MultiTenancyDevise) Documentation
PHC mtdevise gem adds multi-tenant and account management features to rails Devise gem. Plataformatec Devise and required custom Twitter Bootstrap Devise views included.  

* Multi-tenancy using subdomain scoping and account_id column.
* Adds basecamp style logins to devise authentication gem.  
* Highly customizable views and layouts using standard bootstrap 3 code.  
* Central login screen for all tenants (users) or logins through subdomain.  
* Compatible with postgre, mysql and sqlite (for deve environments)  

#### Step 1 - Add user model to your app (Must be Done First!!)
Generate a user.rb file in your mainapp and add the code below 

	rails g model User  
	include Mtdevise::UserStorage  
  
#### Step 2 - Add Mtdevise to your gemfile
	gem 'mtdevise', '~> 1.7', '>= 1.7.8'
	bundle exec install  

#### Step 3 - Add and migrate mtdevise database tables
	rake railties:install:migrations  
	rake db:migrate  
  
#### Step 4 - Configure ActionMailer
+ Mailer functions are required in order for mtdevise to operate.
+ Mailer is used for confirmation and password reset functions.

#### Step 5 - Mount the Engine in your Routes File
Add this line at the end of the routes file.  
  
	mount Mtdevise::Engine, :at => '/'

#### Step 6 - Constrain the routs you want secured
All the routes you want to have multi-tenacy login functions goes in between the constraints block.

	constraints(Mtdevise::Constraints::SubdomainRequired) do  
		# Routes Requiring Security & Multi-Tenancy Routes    
	end  
  
#### Step 7 - Modifications to MainApp Controllers & Database  
Your app needs modification to [controllers (example)](https://github.com/PHCNetworks/multi-tenancy-devise/wiki/Scoped-Controller-Example) and corresponding database tables must have an accounts_id column.  
  
	accounts_id  
  
#### Step 8 - Add mtdevise extension to models  
Add the mtdevise extension to the top of all models for the routes configured in the previous step.  
  
	def self.scoped_to(account)  
		where(:account_id => account.id)  
	end  
  
#### Step 9 - Configure scopes in your controller
Scope your controllers. Examples on github wiki or multi-tenant starter app.

	.scoped_to(current_account)  
  
### Additional Information  
  
#### Views - Mtdevise Views Can be Customized  
Once installed views can be generated and customized to your apps needs.  
  
    rails generate mtdevise:views  
  
#### Having troubles ?  
[Multi-Tenant Starter App](https://github.com/PHCNetworks/multi-tenancy-starter-devise)  
[Documentation (Github Wiki)](https://github.com/PHCNetworks/multi-tenancy-devise/wiki)  
[Issues & Bug Reports](https://github.com/PHCNetworks/multi-tenancy-devise/issues)  
[Managed by PHCNetworks](http://phcnetworks.net)  