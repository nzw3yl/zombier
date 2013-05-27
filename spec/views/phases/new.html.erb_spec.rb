require 'spec_helper'

describe "phases/new" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name 1",
      :value => 2,
      :cost => 3
    ))
    assign(:phase, stub_model(Phase,
      :title => "MyString",
      :project_id => @project.id,
      :milestone => false,
      :value => 1,
      :cost => 1
    ).as_new_record)
  end

 # it "renders new phase form" do
  #  render new_project_phase_path(@project)

    # Run the generator again with the --webrat flag if you want to use webrat matchers
   # assert_select "form[action=?][method=?]", new_project_phase_path(@project), "post" do
    #  assert_select "input#phase_title[name=?]", "phase[title]"
     # assert_select "input#phase_milestone[name=?]", "phase[milestone]"
      #assert_select "input#phase_value[name=?]", "phase[value]"
      #assert_select "input#phase_cost[name=?]", "phase[cost]"
  #  end
  #end
end
