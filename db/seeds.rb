require 'faker'

Advertisement.create!(title: "iPod for sale", copy: "Brand new Ipod for sale at half price", price: 99)
Advertisement.create!(title: "Macbook Pro for sale", copy: "Brand new Macbook Pro for sale at half price", price: 599)
Advertisement.create!(title: "iMac for sale", copy: "Brand new iMac for sale at half price", price: 1099)

puts "Seeds finished"
puts "#{Advertisement.count} advertisements created"