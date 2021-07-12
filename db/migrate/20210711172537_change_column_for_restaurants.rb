class ChangeColumnForRestaurants < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :zipcode, :address
  end
end
