class Customer
  attr_reader :reviews,:restaurants
@@all=[]
  def initialize(review)
    # @content = content
    # # string
    # @rating  = rating
    # # integer
    @reviews=reviews
    @@all<<self
  end

  def self.all
    @@all
  end

  # def full_name
  #   "#{first_name} #{last_name}"
  # end

  def add_review(content, rating)
review=Review.new(content,rating,self)
# setting new review content to the restaurant to associate it with
review=Review.restaurant
end

def num_reviews
# iterate through all the reviews associated with the customer
end
def restaurants
  new_array=[]
  Restaurants.uniq.select do |restaurant|
    # setting a customer to the unique restaurant array.
    self.restaurant==self.review
    new_array<<self.restaurant
    # when it equals to the customer review we oush it in
end
