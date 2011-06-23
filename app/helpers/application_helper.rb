module ApplicationHelper


	def title
		base_title = "PMOnline"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	def logo
		image_tag( "logo.png", :alt => "PMOnline", :class => "round" )
	end
	def tagline
		slogans = ["the game theory of getting it on", 
								"boycott advertising",
								"buying things is theft"]
		r = rand(slogans.length)
		slogans[r]
	end
	def link_to_pm( page )
		link_to page.capitalize, "http://www.punk.mathematics.com/#{page}"
	end



end
