module Mtdevise
	class Member < ActiveRecord::Base
		belongs_to :account, :class_name => "Mtdevise::Account"
		belongs_to :user, :class_name => "Mtdevise::User"
	end
end