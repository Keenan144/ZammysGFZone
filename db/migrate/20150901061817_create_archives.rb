class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string  :site_url
      t.string  :image
      t.string  :title
      t.datetime :date 
      t.integer :votes
      t.text    :blog_content

      t.timestamps null: false
    end
  end
end
