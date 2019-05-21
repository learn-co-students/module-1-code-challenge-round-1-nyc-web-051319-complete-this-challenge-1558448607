require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
puts "Begin tests"

#customers
c1 = Customer.new("Buffy", "Summers")
c2 = Customer.new("Willow", "Rosenberg")
c3 = Customer.new("Willow", "Tree")
c4 = Customer.new("Xander", "Harris")
c5 = Customer.new("Rupert", "Giles")

#restaurants
r1 = Restaurant.new("Doublemeat")
r2 = Restaurant.new("The Bronze")
r3 = Restaurant.new("Magic Box")
r4 = Restaurant.new("McDonalds")

#doublemeat reviews
c1.add_review(r1, 5, "Liked")
c2.add_review(r1, 1, "Disliked!")
c5.add_review(r1, 2, "Disliked")

#other reviews
c1.add_review(r2, 5, "Liked")
c4.add_review(r3, 5, "Liked")
c3.add_review(r4, 4, "Liked")


# puts r1.average_star_rating

# puts c1.cust_reviews
# puts c1.num_reviews
puts c1.restaurants

puts "End tests"

# puts c1.restaurants
# puts r1.average_star_rating
# puts Customer.find_by_first_name("Willow") -- getting var TWICE?

# puts Customer.all_names
# puts Restaurant.find_by_name("Doublemeat")
# puts "line break"


# puts Customer.find_by_first_name("Willow")


# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line
