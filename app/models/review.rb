class Review
  attr_accessor :content
  attr_reader :customer, :restaurant, :rating
  ## @customer can be returned (read), but not changed
  ## @restaurant can be returned (read), but not changed
  ## @content can be returned (read) and changed (not specified in README)
  ## @rating has a custom writer below


  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    
    if rating < 1 || rating > 5
      puts "Please enter a rating between 1 and 5."
    else
      @rating = rating
    end

    @@all << self
  end

  #instance methods

  def rating=(rating)
    if rating < 1 || rating > 5
      puts "Please enter a rating between 1 and 5."
    else
      @rating = rating
    end
  end

  #class methods

  def self.all
    @@all
  end

end #end of Review class
