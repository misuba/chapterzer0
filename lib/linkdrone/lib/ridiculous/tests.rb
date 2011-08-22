# 1,2,3 Testing

require "ridiculous"

include Ridiculous

# define username and password (it must change in the next version)
Ridiculous::USERNAME = "YourUsernameHere"
Ridiculous::PASSWORD = "YourPasswordHere"

# testing posts
puts "\nTESTING POSTS...\n\n"

@post = Post.new

puts "\nRETRIEVING THE LAST 5 POSTS TAGGED AS `ruby`\n"

@post.recent(:tag => 'ruby', :count => 5).each { |p|
  puts "#{p['description']}\n"
  puts "#{p['href']}\n"
  puts "#{p['tags']}\n\n"
}

puts "." * 60

puts "\nTRYING TO GET AN ESPECIFIC POST\n"

p = @post.get(:url => 'http://rhg.rubyforge.org/')

if p.empty? 
  puts "Post not found"
else
  p = p.shift
  puts "#{p['description']}\n"
  puts "#{p['href']}\n"
  puts "#{p['tags']}\n\n"
end

puts "." * 60

puts "\nTAGs..."

tag = Tag.new
tag.tags.each { |t| puts "#{t['tag']} (#{t['count']})" }

puts "." * 60

puts "\nTRYING TO RENAME A TAG"

old_name = "texto"
new_name = "textos"

if (tag.rename(old_name,new_name)) then
  puts "Tag #{old_name} renamed to #{new_name}\n"
else
  puts "Oh... failed!\n"
end

puts "." * 60
