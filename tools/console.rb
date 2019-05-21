require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

emi = Customer.new("Emi", "Katsuta")
duncan = Customer.new("Duncan", "Fraser")
jennifer = Customer.new("Jennifer", "Li")
jenn = Customer.new("Jennifer", "Park")

madcap = Restaurant.new("Madcap")
lucali = Restaurant.new("Lucali")
hibino = Restaurant.new("Hibino")
ugly_baby = Restaurant.new("Ugly Baby")
slowteria = Restaurant.new("Slowteria")

r1 = Review.new(emi, madcap, "my favorite restaurant", 5)
r2 = Review.new(duncan, lucali, "best pizza ever", 4)
r3 = Review.new(jennifer, madcap, "eh", 2)
r4 = Review.new(emi, hibino, "great sushi", 3)
r5 = Review.new(duncan, ugly_baby, "too spicy", 2)
r6 = Review.new(emi, slowteria, "overpriced", 1)
r7 = Review.new(duncan, ugly_baby, "actually it's ok", 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
