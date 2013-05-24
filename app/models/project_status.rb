class ProjectStatus < ActiveRecord::Base
  attr_accessible :name, :organization_id, :color_code
  has_many :projects
end
