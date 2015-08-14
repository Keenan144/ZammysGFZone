class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :type
      t.string :confirmed_gf
      t.string :where_to_find

      t.integer :price
      t.integer :taste
      t.integer :difficulty
      t.integer :rating
      t.integer :views
    # go to http://stackoverflow.com/questions/22247582/rails-4-saving-images-in-database 
    # set images

      t.integer :food_category_id
      t.integer :recipe_id
      t.integer :fast_food_id
      t.integer :restaurant_id
      t.integer :blog_post_id

      t.timestamps null: false
    end
  end
end
