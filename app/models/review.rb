class Review
attr_accessor :customer, :restaurant,:rating,:content
# since we are not changing it
attr_reader :author
@@all=[]

def initialize(rating,content,customomer)
  @rating= rating
  # integer
  @content = content
  # string
end



def self.all
  @@all
end


end
