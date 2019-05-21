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
    self.all.find do |name|
      restaurant.name == name
    end
  end

  def reviews
    Reviews.all.select do |restaurant|
      review.restaurant == self
        #references Review class and finds all reviews of the restaurant
    end
  end

  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
  end

  def longest_review
    reviews.max_by do |review|
      reviews.review
    end
  end
  #returns restaurant's longest review

end #end Restaurant class
