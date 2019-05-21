require 'pry'
class Customer
  attr_reader :first, :last
  @@all = []

  def initialize(first, last)
    @first = first
    @last = last
    @@all << self
  end

  def full_name
    "#{@first} #{@last}"
  end

  def add_review(restaurant, rating, content)
    Review.new(restaurant, self, rating, content) #creating new review instance for the cutomer
  end

  def num_reviews
    reviews_array = []
    Review.all.select do |review|
      if review.customer.first == self.first #checking to see if the customers first name is equal to the instances first name
        reviews_array << review #pushing the review the customer made to a new array
      end #if end
    end #select end
    reviews_array.size #getting the number of reviews the customer made
  end #num_reviews end

  def restaurant
    # restaurants = []
    # Review.all.select {|review| review.}
  end

  def self.all
    @@all
  end

  def self.find_by_name
    self.all.find {|customer| customer.first = self.first} #comparing to see if the customers name is equal to itself and grabbing the first time it happens with .find
  end

  def self.find_all_by_first_name(name)
    names = name.split(" ")
    self.all.select {|customer| customer.first = names[0]} #splitting the name to grab the first name and grabbing the  the arrays first position to get the first name to see if it matches cutomer.first
  end

  def self.all_names
    self.all.map{|customer| customer.first + customer.last}
  end
end
