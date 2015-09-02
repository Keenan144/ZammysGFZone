class AddPlacementToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :placement, :string
  end
end
