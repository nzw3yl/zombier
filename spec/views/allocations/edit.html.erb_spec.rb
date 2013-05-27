require 'spec_helper'

describe "allocations/edit" do
  before(:each) do
    @allocation = assign(:allocation, stub_model(Allocation,
      :user_id => 1,
      :phase_id => 1,
      :project_role_id => 1,
      :visible => false,
      :percent => 1
    ))
  end

  it "renders the edit allocation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", allocation_path(@allocation), "post" do
      assert_select "input#allocation_user_id[name=?]", "allocation[user_id]"
      assert_select "input#allocation_phase_id[name=?]", "allocation[phase_id]"
      assert_select "input#allocation_project_role_id[name=?]", "allocation[project_role_id]"
      assert_select "input#allocation_visible[name=?]", "allocation[visible]"
      assert_select "input#allocation_percent[name=?]", "allocation[percent]"
    end
  end
end
