class RemoveRestaurantIdFromRecipes < ActiveRecord::Migration[6.1]
  def change
  
    remove_column :recipes, :restaurant_id, :integer
   
  end
end
