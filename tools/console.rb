require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


mendel = Customer.new("mendel", "stillerman")
mendel_2 = Customer.new("mendel", "stillerman")
mendel_3 = Customer.new("mendel", "samuels")
barak = Customer.new("barak", "obama")
bob = Customer.new("bob", "dylan")
bob_2 = Customer.new("bob", "faiser")

nyc_deli = Restaurant.new("NY Deli")
sushi = Restaurant.new("Sushi Spot")
steak_house = Restaurant.new("steak house")

mendel.add_review(nyc_deli, "Awesome", 10)
bob.add_review(nyc_deli, "OK", 4)
barak.add_review(nyc_deli, "BAD", 2)
mendel.add_review(steak_house, "Fine", 5)
barak.add_review(sushi, "Not bad", 2)
bob.add_review(sushi, "Bad", 1)
bob.add_review(nyc_deli, "Good", 9)

review_1 = Review.new(nyc_deli, mendel_2, "Rocks", -9)
review_2 = Review.new(steak_house, bob, "I Feel Good", 18)
review_3 = Review.new(sushi, barak, "so so...", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
