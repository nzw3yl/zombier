require 'spec_helper'

describe "project_statuses/index" do
  before(:each) do
    assign(:project_statuses, [
      stub_model(ProjectStatus,
        :name => "Name",
        :organization_id => 1
      ),
      stub_model(ProjectStatus,
        :name => "Name",
        :organization_id => 1
      )
    ])
  end

  it "renders a list of project_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
