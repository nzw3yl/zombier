require 'spec_helper'

describe "project_roles/edit" do
  before(:each) do
    @project_role = assign(:project_role, stub_model(ProjectRole,
      :name => "MyString",
      :organization_id => 1,
      :active => false
    ))
  end

  it "renders the edit project_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_role_path(@project_role), "post" do
      assert_select "input#project_role_name[name=?]", "project_role[name]"
      assert_select "input#project_role_organization_id[name=?]", "project_role[organization_id]"
      assert_select "input#project_role_active[name=?]", "project_role[active]"
    end
  end
end
