class Restaurant
  attr_reader :name,
  attr_accessor
@@all=[]
  def initialize(name,reviews)
    @name = name
    @reviews=reviews
    @@all<<self
  end



def self.all
  @@all
end

def customers


end

def reviews
@reviews
end

def average_star_rating

end

def self.find_by_name(name)
  # iterating through the restaurant to match that given name
self.all.find do |restaurant|
  self.name==name
end



# Restaurant:
# -customers
# -reviews
# average_star_rating
# -longest_review
