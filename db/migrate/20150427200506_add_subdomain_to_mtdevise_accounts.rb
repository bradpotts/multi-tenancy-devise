class AddSubdomainToMtdeviseAccounts < ActiveRecord::Migration
	def change
		add_column :mtdevise_accounts, :subdomain, :string
		add_index :mtdevise_accounts, :subdomain
	end
end