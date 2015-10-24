class AddOwnerIdToMtdeviseAccounts < ActiveRecord::Migration
	def change
		add_column :mtdevise_accounts, :owner_id, :integer
	end
end