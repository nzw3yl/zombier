require 'spec_helper'

describe "project_roles/show" do
  before(:each) do
    @project_role = assign(:project_role, stub_model(ProjectRole,
      :name => "Name",
      :organization_id => 1,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
