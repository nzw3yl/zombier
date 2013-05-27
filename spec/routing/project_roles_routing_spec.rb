require "spec_helper"

describe ProjectRolesController do
  describe "routing" do

    it "routes to #index" do
      get("/project_roles").should route_to("project_roles#index")
    end

    it "routes to #new" do
      get("/project_roles/new").should route_to("project_roles#new")
    end

    it "routes to #show" do
      get("/project_roles/1").should route_to("project_roles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_roles/1/edit").should route_to("project_roles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_roles").should route_to("project_roles#create")
    end

    it "routes to #update" do
      put("/project_roles/1").should route_to("project_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_roles/1").should route_to("project_roles#destroy", :id => "1")
    end

  end
end
