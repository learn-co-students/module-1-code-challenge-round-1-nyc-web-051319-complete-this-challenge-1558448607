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

    def reviews_count
      reviews.count
    end



    def ratings
      reviews.map do |review|
    review.rating
    end
  end
  def average_star_rating
    sum = 0
    average = 0
    ratings.each do |rating|
    sum += rating
    end
  average = sum/reviews_count
  average
  end

  def reviews_comment
  reviews.map do |review|
    review.content
    end
  end

  def longest_review
  reviews_comment.max_by(&:length)
  end


  def customers
  reviews.map do |review|
    review.customer
    end
  end

  def self.find_by_name(name)
  @@all.find do |restaurant|
    restaurant.name == name
    end
  end
end
