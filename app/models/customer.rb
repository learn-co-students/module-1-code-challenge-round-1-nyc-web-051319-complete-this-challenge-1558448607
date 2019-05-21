class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    #returns total number of reviews customer has authored
    total = Review.all.select do |review|
      review.customer == self
    end
    total.count
  end

  def restaurants
    #returns unique array of all restaurants customer has reviewed
    Review.all.map do |review|
      if review.customer == self
        review.restaurant
      end
    end.compact
  end

  def self.find_by_name(full_name)
    #returns first customer whose full name matches (use .find)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    #returns array containing all customers with first name
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    #return array of all customer full names
    self.all.map do |customer|
      customer.full_name
    end
  end
end #end Customer class
