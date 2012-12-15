require 'spec_helper'

describe "document_parents/index" do
  before(:each) do
    assign(:document_parents, [
      stub_model(DocumentParent,
        :name => "Name"
      ),
      stub_model(DocumentParent,
        :name => "Name"
      )
    ])
  end

  it "renders a list of document_parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
