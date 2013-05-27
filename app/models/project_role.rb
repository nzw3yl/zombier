class ProjectRole < ActiveRecord::Base
  attr_accessible :active, :name, :organization_id
  has_many :allocations
  has_many :phases, :through => :allocations
end
