class User < ActiveRecord::Base
  include Subscribem::UserStorage
end