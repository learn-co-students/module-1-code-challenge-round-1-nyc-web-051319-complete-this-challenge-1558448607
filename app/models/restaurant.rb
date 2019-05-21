class Restaurant
  attr_reader :name

  @@all = []
  def self.all
    @@all
  end
  
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq  
  end

  def average_star_rating #return float or integer?
    reviews.inject(0) {|sum, review| sum + review.rating} / reviews.count
  end 

  def longest_review
    #reviews.find {|review| review.content.max_by(&:size)}
    #reviews.find_by()
    reviews.sort_by{|review| review.content.size}.last
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end
end
