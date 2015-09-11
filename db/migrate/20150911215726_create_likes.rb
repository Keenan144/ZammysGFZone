class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :comment_id
      t.integer :blog_post_id
      t.integer :recipe_id
      t.integer :food_id

      t.timestamps null: false
    end
  end
end
