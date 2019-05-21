require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Customer.new("Bob", "Saget")
chris = Customer.new("Chris", "Mod1")
eric = Customer.new("Eric", "Clapton")

hill_country = Restaurant.new("Hill Country BBQ")
rocos_tacos = Restaurant.new("Rocos Tacos")
big_daddys = Restaurant.new("Big Daddys")

bob_review = Review.new(hill_country, bob, 5, "This place was really amazing")

puts bob.add_review(hill_country, 1, "Place was really bad")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
