require_relative '../config/environment.rb'
require_relative '../models/customer.rb'
require_relative '../models/review.rb'
require_relative '../models/restaurant.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Bob", "Smith")
c1 = Customer.new("Jane", "Doe")
c3 = Customer.new("Kevin", "Meek")

r1 = Restaurant.new("Mikey's")
r2 = Restaurant.new("Hot Dogs")
r3 = Restaurant.new("Bestro")


c1.add_review(r1, "Okayyy", 3)
c1.add_review(r3, "M'Okayyy", 4)
c1.add_review(r2, "k", 2)

c2.add_review(r3, "Super", 5)
c2.add_review(r2, "dope", 3)
c2.add_review(r2, "The food was eh", 1)

c3.add_review(r2, "Wahhhhh", 1)
c3.add_review(r1, "blah", 1)
c3.add_review(r3, "eh", 1)

puts Customer.all
puts Restaurant.all
puts c1.num_reviews
puts c2.restaurants
puts "end of customers"



binding.pry
0 #leave this here to ensure binding.pry isn't the last line