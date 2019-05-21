require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#resturant (name, customers,  average_star_rating, longest_review)

r1 = Resturant.new("Panera", c1)
r2 = Resturant.new("Tao", c2)
r3 = Resturant.new("Sweetgreen", c3)



#customer variables (first_name, last_name)

c1 = Customer.new("Sally", "Song")
c2 = Customer.new("Penny", "Park")
c3 = Customer.new("Daisy", "Dew")



#review variables(customer, resturant, rating (integer), content)

re1 = Review.new(c1, r1, 2, "This was terrible")
re2 = Review.new(c2, r2, 5, "This was amazing")
re3 = Review.new(c3, r3, 3, "Ehh")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
