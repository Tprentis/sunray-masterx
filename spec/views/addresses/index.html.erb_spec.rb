require 'spec_helper'

describe "addresses/index" do
  before(:each) do
    assign(:addresses, [
      stub_model(Address,
        :profile_id => 1,
        :address => "Address",
        :address2 => "Address2",
        :string => "String",
        :city => 2,
        :state => 3,
        :zip => "",
        :contact_name => "Contact Name",
        :phone => "Phone",
        :type_address_id => 4
      ),
      stub_model(Address,
        :profile_id => 1,
        :address => "Address",
        :address2 => "Address2",
        :string => "String",
        :city => 2,
        :state => 3,
        :zip => "",
        :contact_name => "Contact Name",
        :phone => "Phone",
        :type_address_id => 4
      )
    ])
  end

  it "renders a list of addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
