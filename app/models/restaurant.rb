class Restaurant
  attr_reader :name, :customers


  @@all = []
  def initialize(name, customers, reviews)
    @name = name
    @customers = customers
    # @average_star_rating = average_star_rating
    # @longest_review = longest_review
    @@all << self
  end

  def self.all
    @@all
  end

#i want the resturant the customer reviewed to equal self (the restaurant)
  def customers
    Restaurant.all.select do |customers|
      customers.name == self
    end.uniq
  end

  #i want the name of the resturant reviewed to equal self (the restaurant)
  def reviews
    Review.all.each do |reviews|
      reviews.name == self
    end
    reviews
  end


  def average_star_rating


  end

#trying to select the review with the longest length by -----
  def longest_review
    Review.all.select do |reviews|




  end





end #end of Resturant class
