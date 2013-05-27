class Phase < ActiveRecord::Base
  attr_accessible :cost, :close, :milestone, :project_id, :start, :title, :value, :allocations_attributes
  belongs_to :project
  has_many :allocations
  has_many :project_roles, :through => :allocations
  accepts_nested_attributes_for :allocations, allow_destroy: true
  
end
