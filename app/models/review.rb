class Review
  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def intialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end



end

