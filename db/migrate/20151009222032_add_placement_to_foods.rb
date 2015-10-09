class AddPlacementToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :placement, :string
  end
end
