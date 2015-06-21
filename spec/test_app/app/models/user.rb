class User < ActiveRecord::Base
  include subengine::UserStorage
end