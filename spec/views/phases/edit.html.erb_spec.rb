require 'spec_helper'

describe "phases/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name 1",
      :value => 2,
      :cost => 3
    ))
    @phase = assign(:phase, stub_model(Phase,
      :title => "MyString",
      :project_id => @project.id,
      :milestone => false,
      :value => 1,
      :cost => 1
    ))
  end

  it "renders the edit phase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phase_path(@phase), "post" do
      assert_select "input#phase_title[name=?]", "phase[title]"
      assert_select "input#phase_milestone[name=?]", "phase[milestone]"
      assert_select "input#phase_value[name=?]", "phase[value]"
      assert_select "input#phase_cost[name=?]", "phase[cost]"
    end
  end
end
