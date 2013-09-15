require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :comment => "MyString",
      :link_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_comment[name=?]", "user[comment]"
      assert_select "input#user_link_id[name=?]", "user[link_id]"
      assert_select "input#user_name[name=?]", "user[name]"
    end
  end
end
