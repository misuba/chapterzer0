class PagesController < ApplicationController
  def home
		@title = "Home"
  end

  def about_the_book
		@title = "About the Book"
  end

  def about_the_author
		@title = "About the Author"
  end

	def networks
		@title = "Networks"
	end

	def mathpunx
		@title = "Oi, mathpunx!"
	end

	def get_involved
		@title = "Get Involved"
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


