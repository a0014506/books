require 'spec_helper'

describe "shops/new" do
  before(:each) do
    assign(:shop, stub_model(Shop,
      :link_id => 1,
      :name => "MyString",
      :offer => "MyString"
    ).as_new_record)
  end

  it "renders new shop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shops_path, "post" do
      assert_select "input#shop_link_id[name=?]", "shop[link_id]"
      assert_select "input#shop_name[name=?]", "shop[name]"
      assert_select "input#shop_offer[name=?]", "shop[offer]"
    end
  end
end
