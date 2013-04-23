require "spec_helper"

describe FilmsController do
  describe "routing" do

    xit "routes to #index" do
      get("/films").should route_to("films#index")
    end

    xit "routes to #new" do
      get("/films/new").should route_to("films#new")
    end

    xit "routes to #show" do
      get("/films/1").should route_to("films#show", :id => "1")
    end

    xit "routes to #edit" do
      get("/films/1/edit").should route_to("films#edit", :id => "1")
    end

    xit "routes to #create" do
      post("/films").should route_to("films#create")
    end

    xit "routes to #update" do
      put("/films/1").should route_to("films#update", :id => "1")
    end

    xit "routes to #destroy" do
      delete("/films/1").should route_to("films#destroy", :id => "1")
    end

  end
end
