class AddOwnerIdToMtdeviseAccounts < ActiveRecord::Migration[5.0]
  def change

    add_column :mtdevise_accounts, :owner_id, :integer

  end
end