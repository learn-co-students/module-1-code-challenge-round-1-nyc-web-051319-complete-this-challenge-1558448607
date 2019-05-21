require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("James", "Jones")
c2 = Customer.new("Ada", "Kingston")
c3 = Customer.new("Larry", "Moses")
c4 = Customer.new("George", "Washing")
c7 = Customer.new("George", "Washington")
c5 = Customer.new("Sarah", "Lovely")
c6 = Customer.new("Sarah", "Lovely")

r1 = Restaurant.new("McD")
r2 = Restaurant.new("Burger King")
r3 = Restaurant.new("Burger Fi")
r4 = Restaurant.new("Wendys")

#Restaurant.all.each do |cus|
#  puts cus.name
#end

#Customer.all

c1.add_review(r1, "this is great", 5)
c1.add_review(r1, "this is greato", 2)
c1.add_review(r1, "this is great", 5)

binding.pry

0 #leave this here to ensure binding.pry isn't the last line