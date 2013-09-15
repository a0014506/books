require 'spec_helper'

describe "links/index" do
  before(:each) do
    assign(:links, [
      stub_model(Link,
        :traffic => 1
      ),
      stub_model(Link,
        :traffic => 1
      )
    ])
  end

  it "renders a list of links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "table", :count => 1
  end
end