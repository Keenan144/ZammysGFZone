class AddBoolToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :bool, :boolean
  end
end
