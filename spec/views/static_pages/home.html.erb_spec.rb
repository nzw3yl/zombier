require 'spec_helper'

describe "Static Page Home" do
  it "should have the content 'Zombier'" do
    visit root_path
    page.should have_content('Zombier')
  end
end
