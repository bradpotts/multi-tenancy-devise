module Subengine
	class User < ActiveRecord::Base
		def self.find_for_authentication(warden_conditions)
			where(:email => warden_conditions[:email], :subdomain => warden_conditions[:subdomain]).first
		end
		# Include default devise modules. Others available are:
		# :confirmable, :lockable, :timeoutable and :omniauthable
		devise :database_authenticatable, :registerable,
			:recoverable, :rememberable, :trackable, :validatable, request_keys: [:subdomain]
	end
end