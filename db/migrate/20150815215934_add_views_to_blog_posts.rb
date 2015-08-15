class AddViewsToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :views, :integer
  end
end
