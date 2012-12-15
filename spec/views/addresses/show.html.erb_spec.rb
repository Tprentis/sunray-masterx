require 'spec_helper'

describe "addresses/show" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Address/)
    rendered.should match(/Address2/)
    rendered.should match(/String/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(//)
    rendered.should match(/Contact Name/)
    rendered.should match(/Phone/)
    rendered.should match(/4/)
  end
end
