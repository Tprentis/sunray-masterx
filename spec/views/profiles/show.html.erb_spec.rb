require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Company Logo/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Website/)
    rendered.should match(/Owners Name/)
    rendered.should match(/Owners Email/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
