#ruby tools/console.rb
class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    # @all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all << full_name
  end


  def add_review(resturant, content, rating)
    Review.new(self, resturant)
  end

  #added this so it is easier to reference in other methods
  def reviews
    Review.all.select do |rw|
      rw.resturant == self
    end
  end

  # number of reviews that have been authored
  def total_num_reviews
    count += 0
     Review.all.each do |reviews|
      reviews.customer
    end
    count
  end

  #we want the an array, number of resturants a customer has reviewed
  def resturants
    

    end.uniq
  end


  def self.find_all_by_name(name)



  end


  def self.find_all_by_first_name



  end



  def self.all_names



  end









end #end of Customer Class
