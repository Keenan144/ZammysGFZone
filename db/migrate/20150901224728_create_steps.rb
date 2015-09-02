class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.text   :step 
      t.string :image
      t.string :link

      t.timestamps null: false
    end
  end
end
