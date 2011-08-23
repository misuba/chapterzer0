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

  describe "GET 'about_the_author'" do

    it "should be successful" do
      get 'about_the_author'
      response.should be_success
    end

		it "should have the right title" do
			get 'about_the_author'
			response.should have_selector("title", :content => "PMOnline | About the Author")
		end
  end

  describe "GET 'about_the_book'" do

    it "should be successful" do
      get 'about_the_book'
      response.should be_success
    end

		it "should have the right title" do
			get 'about_the_book'
			response.should have_selector("title", :content => "PMOnline | About the Book")
		end
  end

=begin
  describe "GET 'blog'" do

    it "should be successful" do
      get 'blog'
      response.should be_success
    end
  end

  describe "GET 'contact'" do

    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end
=end

end
