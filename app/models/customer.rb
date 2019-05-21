class Customer
  attr_reader :first_name, :last_name

  @@all = []

  #Initialize new Customer instance
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  #Return all Customer instances
  def self.all
    @@all
  end

  #Return Customer instance's first_name and last_name as a String
  def full_name
    "#{first_name} #{last_name}"
  end

  #Create new Review instance that associates with a Customer and Restaurant instance
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #Helper Method that returns all Review instances associated with this Customer instance
  def all_reviews
    Review.all.select {|review| review.customer == self}
  end

  #Returns total number of reviews made by Customer instance
  def num_reviews
    all_reviews.count
  end

  #Returns unique array of all restaurants this Customer instance has reviewed
  def restaurants
    all_reviews.map {|review| review.restaurant}.uniq
  end

  #Returns first Customer instance that matches full_name
  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  #Returns an array of all Customer instances with given first_name
  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name == first_name}
  end

  #Returns an array of all Customer instances' full_names
  def self.all_names
    self.all.map {|customer| customer.full_name}
  end
end
