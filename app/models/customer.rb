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

  def add_review(restaurant, rating, content) #passing
    # given a restaurant, content (as a string), and a star rating (as an integer), creates a new review
    Review.new(self, restaurant, rating, content)
  end

  def cust_reviews #use this to clean code
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews #passing
    #returns total number of reviews that a customer has authored
    cust_reviews.count
  end

  def restaurants
    #returns a unique array of all restaurants a customer has reviewed
    array = []
    cust_reviews.select do |review|
      array << review.restaurant
    end
    array.uniq
    
    # First attempt:
    # array = []
    # Review.all.select do |review|
    #   if review.customer == self
    #     array << review.restaurant
    #   end
    # end
    # array.uniq
  end

  def self.find_by_name(name)
    # class method
    # given a string of a full name, returns the first customer whose full name matches
    array = name.split(" ")
      self.all.find {|customer| customer.first_name == array[0]}
  end

  def self.find_by_first_name(name)
    # class method
    # given a string of a first name, returns an array containing all customers with that first name
    array = []
    self.all.each do |customer|
      if customer.first_name == name
        array << customer
      end
    end
    array
  end

  def self.all_names
    # return an array of all of the customer full names
    self.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end


end #end class
