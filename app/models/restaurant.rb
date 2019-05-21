class Restaurant
  attr_reader :name

  @@all = []

  #Initialize new Restaurant instance
  def initialize(name)
    @name = name
    @@all << self
  end

  #Return all Restaurant instances
  def self.all
    @@all
  end

  #Returns an array of all Review instances associated with this Restaurant
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  #Returns unique array of all customer instances who have reviewed this restaurant
  def customers
    reviews.map {|review| review.customer}.uniq
  end

  #Returns a Restaurant's average star rating based on its reviews
  def average_star_rating
    total = 0
    reviews.each {|review| total += review.rating}
    total / reviews.count
  end

  #Returns longest review content for a Restaurant
  def longest_review
    reviews.map {|review| review.content}.max_by(&:length)
  end

  #Returns first Restaurant instance that matches the name given
  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

end
