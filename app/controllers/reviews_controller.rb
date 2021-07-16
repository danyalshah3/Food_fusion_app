class ReviewsController < ApplicationController
before_action :set_recipe
before_action :set_review, only: [:show, :update]



    def create
      @review = current_user.reviews.build(review_params)
      @review.recipe = @recipe
     if @review.save
        redirect_to @recipe
      else
        render :"recipes/show"
     end
    end


    def update
        if @review.update(review_params)
          redirect_to @recipe
        else
          render :"recipes/show"
        end
      end




    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id]) if params[:recipe_id]
    end

    def set_review
        @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:rating, :content)
    end
end
