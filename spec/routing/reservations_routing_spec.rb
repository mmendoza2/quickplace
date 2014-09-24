require "spec_helper"

describe ReservationsController do
  describe "routing" do

    it "routes to #index" do
      get("/reserervations").should route_to("reserervations#index")
    end

    it "routes to #new" do
      get("/reserervations/new").should route_to("reserervations#new")
    end

    it "routes to #show" do
      get("/reserervations/1").should route_to("reserervations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reserervations/1/edit").should route_to("reserervations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reserervations").should route_to("reserervations#create")
    end

    it "routes to #update" do
      put("/reserervations/1").should route_to("reserervations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reserervations/1").should route_to("reserervations#destroy", :id => "1")
    end

  end
end
