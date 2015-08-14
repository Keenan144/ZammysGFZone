class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string  :site_url
      t.string  :title
      t.datetime :date 
      t.integer :votes
      t.text    :blog_content
    # go to http://stackoverflow.com/questions/22247582/rails-4-saving-images-in-database 
    # set images
    
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
