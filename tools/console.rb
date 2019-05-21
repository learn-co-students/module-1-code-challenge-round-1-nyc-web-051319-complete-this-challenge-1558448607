require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bob = Customer.new("bob","home")
jim = Customer.new("jim","car")
jake = Customer.new("jake","plane")

pizza = Restaurant.new("pizzahut")
taco = Restaurant.new("tacobell")
sandwhich = Restaurant.new("subway")

bob.add_review(pizza,5,"solid")
jim.add_review(pizza,9,"greatest ever")
jake.add_review(taco,5,"eh")
jake.add_review(sandwhich,10,"wow")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
