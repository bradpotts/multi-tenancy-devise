class CreateMtdeviseUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :mtdevise_users do |t|

      t.string :email
      t.string :password_digest

      t.timestamps

    end
  end
end
