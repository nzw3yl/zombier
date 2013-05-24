require 'spec_helper'

describe "project_statuses/show" do
  before(:each) do
    @project_status = assign(:project_status, stub_model(ProjectStatus,
      :name => "Name",
      :organization_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
