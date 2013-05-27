require 'spec_helper'

describe "allocations/show" do
  before(:each) do
    @allocation = assign(:allocation, stub_model(Allocation,
      :user_id => 1,
      :phase_id => 2,
      :project_role_id => 3,
      :visible => false,
      :percent => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/false/)
    rendered.should match(/4/)
  end
end
