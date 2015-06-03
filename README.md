[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/subengine/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/subengine)
[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master)

# CoastDigitalGroup - Subscription Engine

The main authetication and subscription engine for all CoastDigitalGroup's apps open sourced.

===== Step 1: Required in gemfile
* For Development - Remote Github - gem 'cdgsubengine', git: 'http://github.com/CoastDigitalGroup/cdg-subengine.git'
* For Production - Local Folder  - gem 'cdgsubengine', path: 'cdgsubengine' Download cdg-subengine into root foler.

===== Step 2: Add below line to load requried file to the top of routes file. (routes.rb)
require "cdgsubengine/constraints/subdomain_required"  

===== Step 3: Add contraints to routes that requires multitenancy function between the two lines below . (routes.rb)
constraints(Cdgsubengine::Constraints::SubdomainRequired) do  

end

===== Step 4: Copy below line insert at the bottom of the routes file. (routes.rb)
mount Cdgsubengine::Engine, :at => '/'  



------

===== Security and Login
* Uses Warden for Authetication
* Authetication through Subdomain

===== Account Data Management
* Sub-domain Restriction
* Sub-domain Validation
* Separated Account Data

===== User UI and Interaction
* Gravatar Support

==== InProgress

Stripe Plan & Payment System
* Stripe Payment Integration
* Plan/Subscription Stripe Integration
* Plan Switching & Management

==== Licence and Terms of Use

This project rocks and uses MIT-LICENSE and is open sourced. 

Notice: Some major changes can break applications and we cannot be held liable. Under production, load the engine locally within the root of your project instead of using github repository.