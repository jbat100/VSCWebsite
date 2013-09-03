require "spec_helper"

describe UserElementsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_elements").should route_to("user_elements#index")
    end

    it "routes to #new" do
      get("/user_elements/new").should route_to("user_elements#new")
    end

    it "routes to #show" do
      get("/user_elements/1").should route_to("user_elements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_elements/1/edit").should route_to("user_elements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_elements").should route_to("user_elements#create")
    end

    it "routes to #update" do
      put("/user_elements/1").should route_to("user_elements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_elements/1").should route_to("user_elements#destroy", :id => "1")
    end

  end
end
