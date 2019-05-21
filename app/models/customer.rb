class Customer
  attr_reader :first_name, :last_name

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

  def self.find_by_name(name)
    self.all.find do |name|
      customer.name == name
    end
  end
  #finds customer by name

  def self.find_all_by_first_name(name)
    self.all.select do |name|
      customer.name == name
    end
  end

  def self.all_names
    customer.full_name
  end

  def reviews
    Review.all.select do |customer|
      review.customer == self
    end
  end
#references Review class and finds all reviews by instance of customer

  def add_review(restaurant, review, rating)
    Review.new(self, restaurant, review, rating)
  end

  def num_reviews
    reviews.count
    end
  end
  def restaurants
    Review.all


end #Customer class
