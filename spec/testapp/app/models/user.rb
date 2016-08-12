class User < ActiveRecord::Base
	include Mtdevise::UserStorage
end
