require 'spec_helper'

describe "DocumentParents" do
  describe "GET /document_parents" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get document_parents_path
      response.status.should be(200)
    end
  end
end
