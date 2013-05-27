class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :title
      t.date :start
      t.date :close
      t.integer :project_id
      t.boolean :milestone, :default => false
      t.integer :value
      t.integer :cost

      t.timestamps
    end
  end
end
