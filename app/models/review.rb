class Review

  attr_reader :restaurant, :customer, :content, :rating

  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    
    if rating.between?(1,5)
      @rating = rating
    elsif rating <= 0
      @rating = 0
    else
      @rating = 5
    end

    @@all << self
  end

  def self.all
    @@all
  end

end
