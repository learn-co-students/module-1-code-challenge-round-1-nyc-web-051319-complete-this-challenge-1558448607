class Review
attr_reader :customer, :resturant
attr_accessor :rating, :content
  @@all = []

  def initialize(customer, resturant, content, rating)
    @customer = customer
    @resturant = resturant
    @rating = rating.to_i(1..5)
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end




end #end of Review class
