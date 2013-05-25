require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "tomorrowtree" }

  describe "Home page" do

    it "should have the h1 'tomorrowtree'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'tomorrowtree')
    end

    it "should have the title 'tomorrowtree'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "tomorrowtree")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "tomorrowtree")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "About")
    end
  end

  describe "Contact page" do

  	it "should have the h1 'Contact us'" do
  		visit '/static_pages/contact'
  		page.should have_selector('h1', :text => 'Contact us')
  	end

  	it "should have the title 'Contact us'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title', 
  			:text => "Contact us")
  	end
  end
end