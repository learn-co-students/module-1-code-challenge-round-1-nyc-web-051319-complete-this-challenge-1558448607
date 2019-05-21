class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  #instance methods

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total_points = 0
    self.reviews.each do |review|
      total_points += review.rating
    end
    total_points/self.reviews.length
  end

  def longest_review
    count = 0
    longest_review = nil

    self.reviews.each do |review|
      if review.content.length > count
        count = review.content.length
        longest_review = review.content
      end
    end

    longest_review
  end

  #class methods

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end #end of Restaurant class
