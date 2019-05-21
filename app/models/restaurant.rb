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

  def customers
    # returns a unique list of all customers who have reviewed a particular restaurant
    # use uniq
    array = []
    Review.all.select do |review|
      if review.restaurant == self
        array << review.customer
      end
    end
    array.uniq
  end
  #
  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating #DRY fix later
    # returns the average star rating for a restaurant based on its reviews
    array = []
    reviews.each { |review| array << review.rating }
    array.inject(0.0) { |sum, rating| sum + rating } / array.size

    #First attempt:
    # array = []
    # Review.all.select do |review|
    #   if review.restaurant == self
    #     array << review.rating
    #   end
    # end
    # array.inject(0.0) { |sum, rating| sum + rating } / array.size

  end

  def longest_review #passing, not DRY - refactor!
    # returns the longest review content for a given restaurant
    array = []
    reviews.select { |review| array << review.content.length }
    reviews.find { |review| review.content.length == array.sort.last }
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    # use find
      self.all.find {|restaurant| restaurant.name == name}
  end

end #end class
