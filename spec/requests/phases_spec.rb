require 'spec_helper'

describe "Phases" do
  
  let(:project) { FactoryGirl.create(:project) }

    subject { phase }
  
  describe "GET /phases" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get project_phases_path(project)
      response.status.should be(200)
    end
  end
end
