class Customer
  attr_reader :first_name, :last_name
  attr_accessor :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    reviews.map do |review|
      review.review
    end.count
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end
  end

  def self.find_by_name(full_name)
    self.all.select do |name|
      name.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |name|
      name.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |name|
      name.full_name
    end
  end
end
