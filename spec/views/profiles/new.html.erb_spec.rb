require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :company_name => "MyString",
      :company_logo => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :website => "MyString",
      :owners_name => "MyString",
      :owners_email => "MyString",
      :sales_person => 1,
      :job_description => "MyText",
      :multiple_region => 1,
      :multiple_branches => 1,
      :active => 1
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_company_name", :name => "profile[company_name]"
      assert_select "input#profile_company_logo", :name => "profile[company_logo]"
      assert_select "input#profile_phone", :name => "profile[phone]"
      assert_select "input#profile_fax", :name => "profile[fax]"
      assert_select "input#profile_website", :name => "profile[website]"
      assert_select "input#profile_owners_name", :name => "profile[owners_name]"
      assert_select "input#profile_owners_email", :name => "profile[owners_email]"
      assert_select "input#profile_sales_person", :name => "profile[sales_person]"
      assert_select "textarea#profile_job_description", :name => "profile[job_description]"
      assert_select "input#profile_multiple_region", :name => "profile[multiple_region]"
      assert_select "input#profile_multiple_branches", :name => "profile[multiple_branches]"
      assert_select "input#profile_active", :name => "profile[active]"
    end
  end
end
