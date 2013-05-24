require 'spec_helper'

describe "project_statuses/new" do
  before(:each) do
    assign(:project_status, stub_model(ProjectStatus,
      :name => "MyString",
      :organization_id => 1
    ).as_new_record)
  end

  it "renders new project_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_statuses_path, "post" do
      assert_select "input#project_status_name[name=?]", "project_status[name]"
      assert_select "input#project_status_organization_id[name=?]", "project_status[organization_id]"
    end
  end
end
