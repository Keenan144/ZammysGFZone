class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :difficulty
      t.integer :time 
      t.integer :taste_rating
      t.string :confirmed_gf

      t.integer :user_id
      t.integer :blog_post_id
      t.integer :category 


      t.timestamps null: false
    end
  end
end
