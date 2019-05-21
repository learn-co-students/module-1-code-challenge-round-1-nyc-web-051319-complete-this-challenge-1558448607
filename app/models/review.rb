class Review

    attr_reader :customer, :restaurant, :rating
    attr_accessor :content#, :rating

    @@all = []
    def self.all
        @@all
    end
    
    def initialize(customer, restaurant, content, rating)

        if valid_rating?(rating)
            @customer, @restaurant, @content, @rating = customer, restaurant, content, rating

            @@all << self
        else
            puts "Please input a rating between 1-5."
        end

    end

    def valid_rating?(rating)
        rating_range = [1,2,3,4,5]
        rating_range.include?(rating)
    end

    def rating=(rating)
        if valid_rating?(rating)
            @rating = rating
        else
            puts "Please input a rating between 1-5."
        end
    end

    def self.find_review(customer, restaurant, content, rating)
        self.all.find{|review| review.customer == customer && review.restaurant == restaurant && review.content == content && review.rating == rating}
    end
    
end

