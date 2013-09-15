require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :comment => "MyString",
      :link_id => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_comment[name=?]", "user[comment]"
      assert_select "input#user_link_id[name=?]", "user[link_id]"
      assert_select "input#user_name[name=?]", "user[name]"
    end
  end
end
