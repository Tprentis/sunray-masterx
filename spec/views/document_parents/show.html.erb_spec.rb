require 'spec_helper'

describe "document_parents/show" do
  before(:each) do
    @document_parent = assign(:document_parent, stub_model(DocumentParent,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
