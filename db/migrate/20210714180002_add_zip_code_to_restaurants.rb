class AddZipCodeToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :zipcode, :integer
  end
end
