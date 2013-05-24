require 'spec_helper'

describe "Static Page Help" do
  it "should have the content 'Zombier'" do
    visit help_path
    page.should have_content('Zombier')
  end
end
