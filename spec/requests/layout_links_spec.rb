require 'spec_helper'

describe "LayoutLinks" do
	it "should have a Home page at '/'" do
		get '/'
		response.should have_selector('title', :content => "Home")
	end
	it "should have a About page at '/about'" do
		get '/about'
		response.should have_selector('title', :content => "About")
	end
	it "should have a Signup page at '/signup'" do
		get '/signup'
		response.should have_selector('title', :content => "Sign up")
	end

	it "should have a Contact page at /contact"
	it "should have a Merch page at /merch" 

	# Not excluding the signup page yet, even though it will be 
	# commented out at some point. Backerz onlee!
	describe "when not signed in" do
		it "should have a sign in link" do
			visit root_path
			response.should have_selector( "a", :href => signin_path,
																		:content =>  "Sign in")
		end
	end
	describe "when signed in" do
		before(:each) do 
			@user = Factory(:user)
			visit signin_path
			fill_in :email,				:with => @user.email
			fill_in :password,		:with => @user.password
			click_button
		end
		it "should have a signout link" do
			visit root_path
			response.should have_selector("a", :href => signout_path,
																	:content => "Sign out")
		end
		it "should have a profile link" do
			visit root_path
			response.should have_selector( "a", :href => user_path(@user),
																		:content => "Profile" )
		end
	end
end
