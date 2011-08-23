class PagesController < ApplicationController
  def home
		@title = "Home"
  end

	def sign_in
		@title = "Sign Up/Sign In"
	end

	# redirecting for now
  def buy_things
		@title = "Buy Things"
		redirect_to "http://www.punkmathematics.com/merch"
  end

	def contact
		@title = "Contact"
		redirect_to "http://www.punkmathematics.com/contact"
	end

	def blog
		@title = "Blog"
		redirect_to "http://www.punkmathematics.com/"
	end
end


