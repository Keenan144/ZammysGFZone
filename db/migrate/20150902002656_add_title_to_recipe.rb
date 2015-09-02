class AddTitleToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :title, :string
    add_column :recipes, :user_id, :integer
  end
end
