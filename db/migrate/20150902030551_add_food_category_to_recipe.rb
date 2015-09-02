class AddFoodCategoryToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :food_category, :integer
  end
end
