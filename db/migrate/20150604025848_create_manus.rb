class CreateManus < ActiveRecord::Migration
  def change
    create_table :manus do |t|
      t.string :dish_name
      t.string :description
      t.string :photo
      t.timestamps
    end
  end
end
