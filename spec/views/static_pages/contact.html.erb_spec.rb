require 'spec_helper'

describe "Static Page Contact" do
  it "should have the content 'Zombier'" do
    visit contact_path
    page.should have_content('Zombier')
  end
end