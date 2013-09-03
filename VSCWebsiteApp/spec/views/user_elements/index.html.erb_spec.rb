require 'spec_helper'

describe "user_elements/index" do
  before(:each) do
    assign(:user_elements, [
      stub_model(UserElement,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      ),
      stub_model(UserElement,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of user_elements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
