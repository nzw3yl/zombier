require 'spec_helper'

describe "phases/index" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name 1",
      :value => 2,
      :cost => 3
    ))
    assign(:phases, [
      stub_model(Phase,
        :title => "Title",
        :project_id => @project.id,
        :milestone => false,
        :value => 2,
        :cost => 3
      ),
      stub_model(Phase,
        :title => "Title",
        :project_id => @project.id,
        :milestone => false,
        :value => 2,
        :cost => 3
      )
    ])
  end

  it "renders a list of phases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => @project.id.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
