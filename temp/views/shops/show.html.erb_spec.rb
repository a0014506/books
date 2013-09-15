require 'spec_helper'

describe "shops/show" do
  before(:each) do
    @shop = assign(:shop, stub_model(Shop,
      :link_id => 1,
      :name => "Name",
      :offer => "Offer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Offer/)
  end
end
