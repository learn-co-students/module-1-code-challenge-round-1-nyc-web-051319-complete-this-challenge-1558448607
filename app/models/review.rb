class Review
  attr_accessor :rating, :content #can be edited
  attr_reader :customer, :restaurant #cannot be changed

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.to_i #forces rating to be int
    @content = content.to_s #forces content to be string
    @@all << self
  end

  def self.all
    @@all
  end

end #end class
