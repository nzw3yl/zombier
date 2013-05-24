require 'spec_helper'

describe "Static Page About" do
  it "should have the content 'Zombier'" do
    visit about_path
    page.should have_content('Zombier')
  end
end