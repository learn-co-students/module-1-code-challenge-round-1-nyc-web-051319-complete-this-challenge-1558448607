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
    #returns unique list of all customers who have reviewed a particular restaurant
    Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end.uniq
  end

  def reviews
    #returns array of all reviews for that restaurant
    Review.all.map do |review|
      if review.restaurant == self
        review
      end
    end.compact
  end

  def average_star_rating
    #returns average star rating for a restaurant based on its reviews
    total = 0
    count = 0
    Review.all.each do |review|
      if review.restaurant == self
        total += review.rating
        count += 1
      end
    end
    total/count
  end

  def longest_review
    #returns the longest review content for a given restaurant
    longest = 0
    @review = ""
    Review.all.each do |review|
      if review.content.length > longest
        longest = review.content.length
        @review = review.content
      end
    end
    @review
  end

  def self.find_by_name(name)
    #given restaurant name, returns first restaurant that matches (.find)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end
end #end class
