class AddCommentIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :comment_id, :string
  end
end
