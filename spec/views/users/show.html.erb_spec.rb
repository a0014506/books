require 'spec_helper'

describe "users/show" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :traffic => 1
    ))
    @user = assign(:user, stub_model(User,
      :comment => "Comment",
      :link_id => 1,
      :name => "Name",
      :link => @link
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
    rendered.should match(/1/)
    rendered.should match(/Name/)
  end
  
  it "renders offers" do
    render
    expect(rendered).to include("Offers")
  end
end
