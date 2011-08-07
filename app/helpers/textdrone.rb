
class Textdrone
	def count_words( dir )
		output = %x[ wc -w #{dir}/* ]
		output =~ /(\d+) total/
		wc =  $1
		return wc
	end

	def post_wordcount( dir )
		puts "Tom has written #{ count_words( dir ) } words in #{ dir }"
	end
end

# I'm not really a thing yet.
# Someday I should be able to:
#		Count Tom's words for the day
#		Post word count to twitter
#		Shame him mercilessly
#			possibly in verse
