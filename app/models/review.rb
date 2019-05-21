class Review
  attr_accessor :content, :rating
  attr_reader :customer, :restaurant

  @@all = []

  #Initialize new Review instance
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    if rating > 5
      @rating = 5
    elsif rating < 0
      @rating = 0
    else
      @rating = rating
    end
    @@all << self
  end

  #Return all Review instances
  def self.all
    @@all
  end

end
