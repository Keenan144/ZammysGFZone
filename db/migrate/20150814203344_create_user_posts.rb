class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      t.string  :title
      t.datetime :date 
      t.integer :votes
      t.text    :post_content

      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
