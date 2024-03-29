module ApplicationHelper

	def title
		base_title = "chapterzer0"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag( "logo.png", :alt => "chapterzer0", :class => "round" )
	end

	def tagline
		slogans = ["the game theory of getting it on", 
								"boycott products",
								"buying things is theft",
								"advertising is malware"]
		r = rand(slogans.length)
		slogans[r]
	end
end
