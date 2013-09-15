require 'spec_helper'

describe "shops/index" do
  before(:each) do
    assign(:shops, [
      stub_model(Shop,
        :link_id => 1,
        :name => "Name",
        :offer => "Offer"
      ),
      stub_model(Shop,
        :link_id => 1,
        :name => "Name",
        :offer => "Offer"
      )
    ])
  end

  it "renders a list of shops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Offer".to_s, :count => 2
  end
end
