class RecipesController < ApplicationController
before_action :set_recipe, only: [:show, :edit, :update, :destroy]


    def index
        @recipes = Recipe.search(params[:search])
       
    end

    def new
     @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.save
           redirect_to recipes_path
        else
            render :new
        end
    
    end

    def show
        @review = Review.find_or_initialize_by(user: current_user, recipe: @recipe)
    end

    def edit
    end

    def update
        if @recipe.update(recipe_params)  
         redirect_to @recipe
         else
            render :edit
        end
        
    end

        def destroy
           @recipe.destroy
           redirect_to recipes_path
        end

    private

    def set_recipe
        @recipe = Recipe.find(params[:id])
    end


    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :description, :minutes, :image_url, :search)
    end

end

