class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.map do |review|
      review.customers
    end.uniq
  end

  def average_star_rating
    sum = 0 
    divide = 0
    Review.all.each do |review|
      sum += review.rating
      divide += 1
    end
    sum / divide
  end


  def longest_review
    Review.all.max_by do |review|
      review.content.length
    end
  end


  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
