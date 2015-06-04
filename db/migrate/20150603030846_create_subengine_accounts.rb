class CreateSubengineAccounts < ActiveRecord::Migration
	def change
		create_table :subengine_accounts do |t|
			t.string :name

			t.timestamps null: false
		end
	end
end