class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.integer :user_id
      t.integer :phase_id
      t.integer :project_role_id
      t.boolean :visible, :default => true
      t.integer :percent, :default => 100

      t.timestamps
    end
  end
end
