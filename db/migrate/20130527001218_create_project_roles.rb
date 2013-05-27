class CreateProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_roles do |t|
      t.string :name
      t.integer :organization_id
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
