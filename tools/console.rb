require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ted = Customer.new("Ted", "Lee")
rob = Customer.new("Robby", "Yuan")
chris = Customer.new("Clees", "Jones")
chr = Customer.new("Clees", "Homes")

res1 = Restaurant.new("Chipotle")
res2 = Restaurant.new("Taco Bell")
res3 = Restaurant.new("Thai Basel")

rev1 = Review.new(ted, res1, "Good", 90)
rev2 = Review.new(rob, res2, "Great", -3)
rev3 = Review.new(chris, res3, "Super Great!", 5)

ted.add_review(res1, "Okay...", 2)
ted.add_review(res2, "kk", 1)
ted.add_review(res2, "Oka", 4)
rob.add_review(res2, "Okay!", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
