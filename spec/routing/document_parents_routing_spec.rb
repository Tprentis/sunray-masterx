require "spec_helper"

describe DocumentParentsController do
  describe "routing" do

    it "routes to #index" do
      get("/document_parents").should route_to("document_parents#index")
    end

    it "routes to #new" do
      get("/document_parents/new").should route_to("document_parents#new")
    end

    it "routes to #show" do
      get("/document_parents/1").should route_to("document_parents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/document_parents/1/edit").should route_to("document_parents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/document_parents").should route_to("document_parents#create")
    end

    it "routes to #update" do
      put("/document_parents/1").should route_to("document_parents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/document_parents/1").should route_to("document_parents#destroy", :id => "1")
    end

  end
end
