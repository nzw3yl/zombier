class Role < ActiveRecord::Base
  attr_accessible :active, :name, :organization_id
  has_many :assignments
  has_many :users, :through => :assignments
  
end
