class AddFirstnameToMtdeviseAccounts < ActiveRecord::Migration
	def change
		add_column :mtdevise_accounts, :firstname, :string
		add_column :mtdevise_accounts, :lastname, :string
		add_column :mtdevise_accounts, :username, :string
	end
end