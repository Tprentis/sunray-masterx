require 'spec_helper'

describe "document_parents/edit" do
  before(:each) do
    @document_parent = assign(:document_parent, stub_model(DocumentParent,
      :name => "MyString"
    ))
  end

  it "renders the edit document_parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => document_parents_path(@document_parent), :method => "post" do
      assert_select "input#document_parent_name", :name => "document_parent[name]"
    end
  end
end
