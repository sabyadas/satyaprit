require 'spec_helper'

describe "submissions/index" do
  before(:each) do
    assign(:submissions, [
      stub_model(Submission,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :essay => "MyText"
      ),
      stub_model(Submission,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :essay => "MyText"
      )
    ])
  end

  it "renders a list of submissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
