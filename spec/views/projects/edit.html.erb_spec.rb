require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :type_id => 1,
      :customer_id => 1,
      :value => 1,
      :cost => 1
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "select#project_type_id[name=?]", "project[type_id]"
      assert_select "select#project_customer_id[name=?]", "project[customer_id]"
      assert_select "input#project_value[name=?]", "project[value]"
      assert_select "input#project_cost[name=?]", "project[cost]"
    end
  end
end
