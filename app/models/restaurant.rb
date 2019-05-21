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

  # HELPER METHOD
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}
  end

  def average_star_rating
    sum_rating = reviews.inject(0) {|sum, review| sum += review.rating}
    sum_rating / reviews.count
  end

  def longest_review
    reviews.max_by {|review| review.content.length}
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

end
