class AddConfirmedAtToUsers < ActiveRecord::Migration
  def change
    add_column :subengine_users, :confirmed_at, :timestamp
    add_column :subengine_users, :confirmation_token, :string
    add_column :subengine_users, :confirmation_sent_at, :timestamp
    add_column :subengine_users, :unconfirmed_email, :string
  end
end
