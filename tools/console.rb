require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#restaurants
dominos = Restaurant.new("Dominos")
aldila = Restaurant.new("Al Di La"

#customers
jaimie = Customer.new("Jaimie", "Nguyen")
mom = Customer.new("Christine", "Nguyen")

#reviews
rev1 = Review.new(jaimie, dominos,"pretty delicious", 4)
rev2 = Review.new(mom, aldila, "yummy", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
