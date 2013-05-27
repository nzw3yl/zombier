class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :organization_id
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
