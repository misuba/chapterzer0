require 'spec_helper'

describe PagesController do
	render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
		it "should have the right title" do
			get 'home'
			response.should have_selector("title", :content => "PMOnline | Home")
		end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
		it "should have the right title" do
			get 'about'
			response.should have_selector("title", :content => "PMOnline | About")
		end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
		it "should have the right title" do
			get 'help'
			response.should have_selector("title", :content => "PMOnline | Help")
		end
  end

end
