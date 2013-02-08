require 'spec_helper'

describe "Static pages" do
  
  describe "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the h1 'Sample App'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "Sample App")
    end


    it "should have the tile 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end

  end

  describe "About page" do
    
    it "should have the content 'about us'" do
      visit '/static_pages/about'
      page.should have_content('About us') 
    end

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end

    it "should have the tile 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end


  end 

end


