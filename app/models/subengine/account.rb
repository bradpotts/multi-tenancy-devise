module Subengine
	class Account < ActiveRecord::Base
		belongs_to :owner, :class_name => "Subengine::User"
		accepts_nested_attributes_for :owner
	end
end