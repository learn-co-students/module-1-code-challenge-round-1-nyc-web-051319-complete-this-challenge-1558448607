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

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    average = 0
    reviews.map do |review|
      average += review.rating / reviews.length
    end
    average
  end

  def longest_review
    reviews.max_by do |review|
      review.content.length
    end
  end

  def self.find_by_name(name)
    self.all.select do |rest|
      rest.name == name
    end
  end
end
