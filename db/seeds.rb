require 'faker'

Post.find_or_create_by!(title: "Testing", body: "No duplicate")
Comment.find_or_create_by!(post: Post.first, body: "Hope this works")

puts "Seeds finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"