class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :title
      t.datetime :date 
      t.integer :votes
      t.text    :comment 

      t.integer :user_id
      t.integer :user_post_id
      t.integer :blog_post_id

      t.timestamps null: false
    end
  end
end
