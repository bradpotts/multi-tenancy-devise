[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master)
[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine)
[![Coverage Status](https://coveralls.io/repos/CoastDigitalGroup/cdg-subengine/badge.svg?branch=master&service=github)](https://coveralls.io/github/CoastDigitalGroup/cdg-subengine?branch=master)
[![Build Status](https://travis-ci.org/CoastDigitalGroup/cdg-subengine.svg?branch=master)](https://travis-ci.org/CoastDigitalGroup/cdg-subengine)

### CDG Subengine Documentation

Multi-Tenancy engine with devise authentication is easy to incorporate into any project. Documentation is in progress.

#### Step 1 - Add Subengine to your gemfile
    gem 'subengine', '~> 0.9.9.4'
    bundle exec install

#### Step 2 - Configure ActionMailer
+ Mailer functions are required in order for subengine to operate.
+ Mailer is used for confirmation and password reset functions.

#### Step 3 - Mount the Engine in your Routes File
Add this line near the end of the routes file.  
  
    mount Subengine::Engine, :at => '/'

#### Step 4 - Constrain the routs you want secured
Any route between these constraints will be secured and have multi-tenant functions. Copy the block of code below.  
  
    constraints(Subengine::Constraints::SubdomainRequired) do  
    end