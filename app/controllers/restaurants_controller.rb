class RestaurantsController < ApplicationController


    def index
        @params = params.permit(:location)
        @restaurants = Restaurant.get_by_location(params[:location] || current_user.zipcode)
      
    end

    def show
     @restaurant = Restaurant.find(params[:id])
        
    end



end
