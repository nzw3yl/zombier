class AddColorCodeToProjectStatuses < ActiveRecord::Migration
  def change
    add_column :project_statuses, :color_code, :string
  end
end
