class ProjectType < ActiveRecord::Base
  attr_accessible :name, :organization_id
  has_many :projects
end
