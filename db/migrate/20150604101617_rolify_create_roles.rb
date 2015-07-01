class RolifyCreateRoles < ActiveRecord::Migration
  def change
    create_table(:subengine_roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:subengine_users_subengine_roles, :id => false) do |t|
      t.references :user
      t.references :role
    end

    add_index(:subengine_roles, :name)
    add_index(:subengine_roles, [ :name, :resource_type, :resource_id ], name: 'index_subengine_roles_on_name_and_resource_type_and_resourc' )
    add_index(:subengine_users_subengine_roles, [ :user_id, :role_id ])
  end
end