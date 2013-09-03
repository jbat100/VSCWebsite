require 'spec_helper'

describe "user_elements/show" do
  before(:each) do
    @user_element = assign(:user_element, stub_model(UserElement,
      :title => "Title",
      :description => "MyText",
      :image_url => "Image Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image Url/)
    rendered.should match(/9.99/)
  end
end
