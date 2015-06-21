class AddOwnerIdTosubengineAccounts < ActiveRecord::Migration
  def change
    add_column :subengine_accounts, :owner_id, :integer
  end
end
