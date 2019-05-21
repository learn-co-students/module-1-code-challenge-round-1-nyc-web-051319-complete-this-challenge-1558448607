class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    # Review.all.each{|review| review.rating}
    #would grab the ratings from the Review
    #use a loop method like inject to att all the ratings together
    #divide the total number by the number of reviews
  end

  def longest_review
    # Review.all.each {|review| review.restaurant == self}.max
    #grab the content from the review for where the review is for that restaurant and then get the length of the reviews and grab the max length size and the return that review
  end
end
