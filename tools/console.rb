require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("Contra")
r2 = Restaurant.new("La Loba Cantina")
r3 = Restaurant.new("Wheated")
r4 = Restaurant.new("Madcap")

c1 = Customer.new("Aaron", "Smith")
c2 = Customer.new("Aaron", "Smurf")
c2 = Customer.new("Mike", "Parker")
c3 = Customer.new("Cathi", "Bartolomeo")
c4 = Customer.new("Julie", "Smolinsky")

rev1 = Review.new(c1, r3, 7, "Yum yum yum")
rev2 = Review.new(c4, r4, 6, "Great burger, whatever pasta")
rev3 = Review.new(c2, r1, 10, "OMG so good!")
rev4 = Review.new(c3, r2, 5, "Food poisoning though...")
rev5 = Review.new(c3, r1, 9, "So great but so broke")
rev6 = Review.new(c1, r1, 10, "Get outta town!")
rev7 = Review.new(c2, r4, 8, "I'm into it")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
