require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :company_name => "Company Name",
        :company_logo => "Company Logo",
        :phone => "Phone",
        :fax => "Fax",
        :website => "Website",
        :owners_name => "Owners Name",
        :owners_email => "Owners Email",
        :sales_person => 1,
        :job_description => "MyText",
        :multiple_region => 2,
        :multiple_branches => 3,
        :active => 4
      ),
      stub_model(Profile,
        :company_name => "Company Name",
        :company_logo => "Company Logo",
        :phone => "Phone",
        :fax => "Fax",
        :website => "Website",
        :owners_name => "Owners Name",
        :owners_email => "Owners Email",
        :sales_person => 1,
        :job_description => "MyText",
        :multiple_region => 2,
        :multiple_branches => 3,
        :active => 4
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Owners Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owners Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
