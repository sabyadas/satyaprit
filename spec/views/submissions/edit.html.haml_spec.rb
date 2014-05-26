require 'spec_helper'

describe "submissions/edit" do
  before(:each) do
    @submission = assign(:submission, stub_model(Submission,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :essay => "MyText"
    ))
  end

  it "renders the edit submission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", submission_path(@submission), "post" do
      assert_select "input#submission_first_name[name=?]", "submission[first_name]"
      assert_select "input#submission_last_name[name=?]", "submission[last_name]"
      assert_select "input#submission_email[name=?]", "submission[email]"
      assert_select "textarea#submission_essay[name=?]", "submission[essay]"
    end
  end
end
