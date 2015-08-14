class CreateFastFoods < ActiveRecord::Migration
  def change
    create_table :fast_foods do |t|
      t.integer :amount_of_gf_items
      t.string :confirmed_gf
      t.integer :expensive_rating
      t.integer :taste_rating
      t.string :location
    # go to http://stackoverflow.com/questions/22247582/rails-4-saving-images-in-database 
    # set images

      t.integer :blog_post_id
      t.integer :user_post_id
      
      t.timestamps null: false
    end
  end
end
