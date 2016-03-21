module Mtdevise
	class Account < ActiveRecord::Base
	
		# Relationships
		belongs_to :owner, :class_name => "Mtdevise::User"
		has_many :members, :class_name => "Mtdevise::Member"
		has_many :users, :through => :members

		accepts_nested_attributes_for :owner

		# Form Validations
		validates :subdomain,
			presence: true,
			uniqueness: true,
			format: { with: /\A[\w\-]+\Z/i, message: 'is not allowed. Please choose another subdomain.'},
			exclusion: { in: %w(admin), message: 'is not allowed. Please choose another subdomain.'}

		validates :name,
			presence: true,
			uniqueness: {scope: :owner_id}

		validates :firstname,
			presence: true

		validates :lastname,
			presence: true

		validates :username,
			presence: true,
			uniqueness: true

		before_validation do
			self.subdomain = subdomain.to_s.downcase
			self.username = username.to_s.downcase
		end

		# Define Account/Owner for User
		def self.create_with_owner(params={})
			account = new(params)
			if account.save
				account.users << account.owner
				account.owner.confirm
			end
			account
		end

	end
end
