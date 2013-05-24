require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :type_id => 1,
        :customer_id => 2,
        :value => 3,
        :cost => 4,
        :current_start => Time.parse("1/1/2013 1:13:03 P.M.").to_date,
        :current_close => Time.parse("12/12/2013 1:13:03 P.M.").to_date
      ),
      stub_model(Project,
        :name => "Name",
        :type_id => 1,
        :customer_id => 2,
        :value => 3,
        :cost => 4,
        :current_start => Time.parse("1/1/2013 1:13:03 P.M.").to_date,
        :current_close => Time.parse("12/12/2013 1:13:03 P.M.").to_date
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
