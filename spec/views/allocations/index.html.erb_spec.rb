require 'spec_helper'

describe "allocations/index" do
  before(:each) do
    assign(:allocations, [
      stub_model(Allocation,
        :user_id => 1,
        :phase_id => 2,
        :project_role_id => 3,
        :visible => false,
        :percent => 4
      ),
      stub_model(Allocation,
        :user_id => 1,
        :phase_id => 2,
        :project_role_id => 3,
        :visible => false,
        :percent => 4
      )
    ])
  end

  it "renders a list of allocations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
