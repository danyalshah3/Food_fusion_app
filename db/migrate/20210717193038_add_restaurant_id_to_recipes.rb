class AddRestaurantIdToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes, :restaurant, foreign_key: true
  end
end
