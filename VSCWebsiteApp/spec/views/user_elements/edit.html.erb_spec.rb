require 'spec_helper'

describe "user_elements/edit" do
  before(:each) do
    @user_element = assign(:user_element, stub_model(UserElement,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit user_element form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_elements_path(@user_element), :method => "post" do
      assert_select "input#user_element_title", :name => "user_element[title]"
      assert_select "textarea#user_element_description", :name => "user_element[description]"
      assert_select "input#user_element_image_url", :name => "user_element[image_url]"
      assert_select "input#user_element_price", :name => "user_element[price]"
    end
  end
end
