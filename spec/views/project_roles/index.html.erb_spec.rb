require 'spec_helper'

describe "project_roles/index" do
  before(:each) do
    assign(:project_roles, [
      stub_model(ProjectRole,
        :name => "Name",
        :organization_id => 1,
        :active => false
      ),
      stub_model(ProjectRole,
        :name => "Name",
        :organization_id => 1,
        :active => false
      )
    ])
  end

  it "renders a list of project_roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
