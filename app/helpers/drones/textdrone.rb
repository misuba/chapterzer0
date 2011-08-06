def wordcount( dir )
	output = %x[ wc -w #{dir}/* ]
	output =~ /(\d+) total/
	wc =  $1
	return wc
end

puts wordcount '.'
# I'm not really a thing yet.
# Someday I should be able to:
#		Count Tom's words for the day
#		Post word count to twitter
#		Shame him mercilessly
#			possibly in verse
