require 'spec_helper'

describe "document_parents/new" do
  before(:each) do
    assign(:document_parent, stub_model(DocumentParent,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new document_parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => document_parents_path, :method => "post" do
      assert_select "input#document_parent_name", :name => "document_parent[name]"
    end
  end
end
