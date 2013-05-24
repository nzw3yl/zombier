class CreateProjectStatuses < ActiveRecord::Migration
  def change
    create_table :project_statuses do |t|
      t.string :name
      t.integer :organization_id

      t.timestamps
    end
  end
end
