require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stephen = Customer.new("stephen", "brewer")
david = Customer.new("david", "green")
max = Customer.new("max", "judge")
ryan = Customer.new("ryan", "kelly")
ryan = Customer.new("stephen", "frazier")

palm = Restaurant.new("palm")
mcdonalds = Restaurant.new("mcdonalds")
bk = Restaurant.new("bk")
tonys = Restaurant.new("tonys")

# (customer, restaurant, rating, content)

r1 = Review.new(stephen, palm, 5, "good")
r2 = Review.new(david, mcdonalds, 2, "bad")
r3 = Review.new(max, bk, 7, "excellent, this place is dank")
r4 = Review.new(ryan, tonys, 10, "omg, the steak melted in my mouth")
r5 = Review.new(stephen, tonys, 5, "holy toledo")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
