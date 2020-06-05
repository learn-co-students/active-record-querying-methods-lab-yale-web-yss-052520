class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
        # Show.order(rating: :desc).first.rating
        # Show.order(rating: :asc).last.rating
    end
    
    def self.most_popular_show 
        Show.order(rating: :asc).last
        # Show.order(rating: :desc).first
        # Show.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating
        Show.minimum(:rating)
        # Show.order(rating: :asc).first.rating
        # Show.order(rating: :desc).last.rating
    end

    def self.least_popular_show
        Show.order(rating: :asc).first
        # Show.order(rating: :desc).last
        # Show.where("rating = ?", self.lowest_rating).first
    end 
    
    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order 
        Show.order(name: :asc)
    end
end 
