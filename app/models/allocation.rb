class Allocation < ActiveRecord::Base
  attr_accessible :percent, :phase_id, :project_role_id, :user_id, :visible
  belongs_to :user
  belongs_to :phase
  belongs_to :project_role
  
end
