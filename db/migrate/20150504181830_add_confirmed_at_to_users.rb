class AddConfirmedAtToUsers < ActiveRecord::Migration[5.0]
  def change

    add_column :mtdevise_users, :confirmed_at, :timestamp
    add_column :mtdevise_users, :confirmation_token, :string
    add_column :mtdevise_users, :confirmation_sent_at, :timestamp
    add_column :mtdevise_users, :unconfirmed_email, :string

  end
end