class Assignment < ActiveRecord::Base
  attr_accessible :role_id, :user_id, :visible
  belongs_to :user
  belongs_to :role
end

