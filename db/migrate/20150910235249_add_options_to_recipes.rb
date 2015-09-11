class AddOptionsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :views, :integer
    add_column :recipes, :votes, :integer
    add_column :recipes, :description, :text
  end
end
