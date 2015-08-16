class AddFoodCategoryIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :food_category_id, :integer
  end
end
