class AddAuthenticationTokenToMtdeviseUsers < ActiveRecord::Migration
	def change
		add_column :mtdevise_users, :authentication_token, :string
		add_index :mtdevise_users, :authentication_token
	end
end