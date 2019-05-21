class Review
  attr_accessor :rating, :content
  attr_reader :restaurant, :customer
  @@all = []
  def initialize(restaurant, customer, rating, content)
    @restaurant, @customer, @rating, @content = restaurant, customer, rating, content
    @@all << self
  end

  def self.all
    @@all
  end

end
