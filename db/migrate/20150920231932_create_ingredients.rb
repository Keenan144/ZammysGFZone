class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :amount
      t.string :note

      t.integer :recipe_id
      t.integer :user_id


      t.timestamps null: false
    end
  end
end
