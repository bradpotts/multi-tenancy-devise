# == Schema Information
#
# Table name: subengine_users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)
#  password_digest        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmed_at           :datetime
#  confirmation_token     :string(255)
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#

module Subengine
	class User < ::User

		# Include default devise modules. Others available are:
		# :confirmable, :lockable, :timeoutable and :omniauthable
		devise  :database_authenticatable
		devise  :confirmable
		devise  :recoverable,
			:rememberable,
			:trackable,
			:validatable,
			:omniauthable

		include Subengine::UserStorage
		rolify role_join_table_name: 'subengine_users_subengine_roles', role_cname: 'Subengine::Role'

		has_many :accounts, :class_name => "Subengine::Account", :foreign_key => "owner_id"
	end
end
