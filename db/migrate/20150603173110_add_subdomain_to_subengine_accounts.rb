class AddSubdomainToSubengineAccounts < ActiveRecord::Migration
	def change
		add_column :subengine_accounts, :subdomain, :string
		add_index :subengine_accounts, :subdomain 
	end
end