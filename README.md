[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/subengine/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/subengine)
[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master)

# CoastDigitalGroup - Subscription Engine

The main authetication and subscription engine for all CoastDigitalGroup's apps open sourced.

##### Step 1: Required in gemfile
Remote Github - gem 'subengine', git: 'http://github.com/CoastDigitalGroup/cdg-subengine.git'  
Best for Production - Download to Root  - gem 'subengine', path: 'cdgsubengine'  

##### Step 2: Add below line to load requried file to the top of routes file. (routes.rb)
require "cdgsubengine/constraints/subdomain_required"  

##### Step 3: Add contraints to routes that requires multitenancy function between the two lines below . (routes.rb)
constraints(Cdgsubengine::Constraints::SubdomainRequired) do  

end

##### Step 4: Copy below line insert at the bottom of the routes file. (routes.rb)
mount Cdgsubengine::Engine, :at => '/'  


##### Security and Login
* Uses Warden for Authetication
* Authetication through Subdomain

##### Account Data Management
* Sub-domain Restriction
* Sub-domain Validation
* Separated Account Data

##### User UI and Interaction
* Gravatar Support

#### InProgress

Devise Implementation
* Registration w/ Confirmation
* Forget Password Reset
* Remember User Login
* Track User Login Times
* Lock User Accounts /Too Many Failed Logins
* Validates User Fields

Stripe Plan & Payment System
* Stripe Payment Integration
* Plan/Subscription Stripe Integration
* Plan Switching & Management

==== Licence and Terms of Use

This project rocks and uses MIT-LICENSE and is open sourced. 

Notice: Some major changes can break applications and we cannot be held liable. Under production, load the engine locally within the root of your project instead of using github repository.