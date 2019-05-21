class Review
  attr_reader :customer, :restaurant, :review, :rating

  @@all = []
  def initialize(customer, restaurant, review, rating)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @rating = rating.to_i
    #will convert string of rating to integer

    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.all.customer
    customer
  end

  def restaurant
    self.all.restaurant
  end

  def rating
    self.all.rating
  end

  def content
    self.all.review
  end

end #end Review class
