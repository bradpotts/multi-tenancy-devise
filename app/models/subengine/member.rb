module Subengine
	class Member < ActiveRecord::Base
		belongs_to :account, :class_name => "Subengine::Account"
		belongs_to :user, :class_name => "Subengine::User"
	end
end