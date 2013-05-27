class Project < ActiveRecord::Base
  attr_accessible :cost, :current_close, :current_start, :customer_id, :name, :type_id, :value, :project_status_id, :phases_attributes
  belongs_to :project_type, :foreign_key => :type_id
  belongs_to :customer
  belongs_to :project_status
  has_many   :phases
  accepts_nested_attributes_for :phases, allow_destroy: true
  
  def as_json(options = {})
    {
      :id => self.id,
      :title => self.name,
      :description => "",
      :start => current_start.rfc822,
      :end => current_close.rfc822,
      :allDay => true,
      :recurring => false,
      :url => Rails.application.routes.url_helpers.project_path(id),
      :color => ProjectStatus.find(self.project_status_id).color_code
    }
  end
  
end
