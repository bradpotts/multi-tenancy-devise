class RolifyCreateRoles < ActiveRecord::Migration

	def change
		create_table(:mtdevise_roles) do |t|
			t.string :name
			t.references :resource, :polymorphic => true

			t.timestamps
		end

		create_table(:mtdevise_users_mtdevise_roles, :id => false) do |t|
			t.references :user
			t.references :role
		end

		add_index(:mtdevise_roles, :name)
		add_index(:mtdevise_roles, [ :name, :resource_type, :resource_id ], name: 'index_mtdevise_roles_on_name_and_resource_type_and_resourc' )
		add_index(:mtdevise_users_mtdevise_roles, [ :user_id, :role_id ])
	end

end