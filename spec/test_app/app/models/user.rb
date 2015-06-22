class User < ActiveRecord::Base
  include Subengine::UserStorage
end