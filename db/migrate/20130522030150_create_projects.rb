class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :current_start
      t.date :current_close
      t.integer :type_id
      t.integer :customer_id
      t.integer :value
      t.integer :cost

      t.timestamps
    end
  end
end
