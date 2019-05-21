class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  #instance methods

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #helper method
  def my_reviews
    ##returns all reviews associated with this customer
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.my_reviews.length
  end

  def restaurants
    self.my_reviews.map do |review|
      review.restaurant
    end.uniq
  end

  #class methods

  def self.all
    @@all
  end

  def self.find_by_name(name) ##given a full_name
    ##returns first customer whose full name matches
    self.all.find do |customer|
      customer.first_name == name.split(" ")[0]
      customer.last_name == name.split(" ")[1]
    end
  end

  def self.find_all_by_first_name(name) ##given a first name
    ##return ALL customers with that first name
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

end #end of Customer class
