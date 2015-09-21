class AddDevotesToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :devotes, :integer
  end
end
