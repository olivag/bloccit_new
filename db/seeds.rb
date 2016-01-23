require 'faker'

5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end

users = User.all

50.times do
  post = Post.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end

posts = Post.all

100.times do
  Comment.create!(
    body: Faker::Lorem.paragraph,
    post: posts.sample
    )
end

user = User.first
user.skip_confirmation!
user.update_attributes!(
  email: 'ryumaster001@yahoo.com',
  password: 'fast1234'
  )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

