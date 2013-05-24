require 'spec_helper'

describe "project_types/index" do
  before(:each) do
    assign(:project_types, [
      stub_model(ProjectType,
        :name => "Name",
        :organization_id => 1
      ),
      stub_model(ProjectType,
        :name => "Name",
        :organization_id => 1
      )
    ])
  end

  it "renders a list of project_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
