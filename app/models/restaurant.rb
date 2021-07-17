class Restaurant < ApplicationRecord
has_many :recipes

    def self.get_by_location(location)
        
        YelpSearch.new(location).to_restaurants
      end
    

      
end
