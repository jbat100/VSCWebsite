require 'spec_helper'

describe "user_elements/new" do
  before(:each) do
    assign(:user_element, stub_model(UserElement,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new user_element form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_elements_path, :method => "post" do
      assert_select "input#user_element_title", :name => "user_element[title]"
      assert_select "textarea#user_element_description", :name => "user_element[description]"
      assert_select "input#user_element_image_url", :name => "user_element[image_url]"
      assert_select "input#user_element_price", :name => "user_element[price]"
    end
  end
end
