require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :profile_id => 1,
      :address => "MyString",
      :address2 => "MyString",
      :string => "MyString",
      :city => 1,
      :state => 1,
      :zip => "",
      :contact_name => "MyString",
      :phone => "MyString",
      :type_address_id => 1
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path(@address), :method => "post" do
      assert_select "input#address_profile_id", :name => "address[profile_id]"
      assert_select "input#address_address", :name => "address[address]"
      assert_select "input#address_address2", :name => "address[address2]"
      assert_select "input#address_string", :name => "address[string]"
      assert_select "input#address_city", :name => "address[city]"
      assert_select "input#address_state", :name => "address[state]"
      assert_select "input#address_zip", :name => "address[zip]"
      assert_select "input#address_contact_name", :name => "address[contact_name]"
      assert_select "input#address_phone", :name => "address[phone]"
      assert_select "input#address_type_address_id", :name => "address[type_address_id]"
    end
  end
end
