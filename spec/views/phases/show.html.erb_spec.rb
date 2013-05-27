require 'spec_helper'

describe "phases/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name 1",
      :value => 2,
      :cost => 3
    ))
    @phase = assign(:phase, stub_model(Phase,
      :title => "Title",
      :project_id => @project.id,
      :milestone => false,
      :value => 2,
      :cost => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
