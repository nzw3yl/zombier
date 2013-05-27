require 'spec_helper'

describe "project_roles/new" do
  before(:each) do
    assign(:project_role, stub_model(ProjectRole,
      :name => "MyString",
      :organization_id => 1,
      :active => false
    ).as_new_record)
  end

  it "renders new project_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_roles_path, "post" do
      assert_select "input#project_role_name[name=?]", "project_role[name]"
      assert_select "input#project_role_organization_id[name=?]", "project_role[organization_id]"
      assert_select "input#project_role_active[name=?]", "project_role[active]"
    end
  end
end
