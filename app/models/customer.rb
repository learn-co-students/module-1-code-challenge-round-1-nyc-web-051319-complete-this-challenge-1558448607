class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def self.all
    @@all
  end
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating) unless Review.all.include?(Review.find_review(self, restaurant, content, rating))
  end

  def all_my_reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    all_my_reviews.count
  end

  def restaurants
    all_my_reviews.map {|review| review.restaurant}.uniq
  end

#  def split_fullname(fullname)
#    
#  end

  def self.find_by_name(fullname)
    full_name = fullname.split(" ")
    first_name = full_name[0]
    last_name = full_name[1]

    self.all.find {|customer| customer.first_name == first_name && customer.last_name == last_name}
  end

  def self.find_all_by_first_name(name) #given string of first name
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

end
