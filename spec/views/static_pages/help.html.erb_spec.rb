require 'spec_helper'

describe "Static Page Help" do
  it "should have the content 'Zombier'" do
    visit '/static_pages/help'
    page.should have_content('Zombier')
  end
end
