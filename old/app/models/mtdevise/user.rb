module Mtdevise
	class User < ::User

		# Gravatar Support
		include Gravtastic
		gravtastic

		# User API Tokens
		acts_as_token_authenticatable
		
		
		# Relationship
		has_many :accounts, :class_name => "Mtdevise::Account", :foreign_key => "owner_id"
		
		# Define Devise
		devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

	end
end
