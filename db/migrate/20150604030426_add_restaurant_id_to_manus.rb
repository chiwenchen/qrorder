class AddRestaurantIdToManus < ActiveRecord::Migration
  def change
    add_column :manus, :restaurant_id, :integer
  end
end
