class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :comment_id
      t.text    :reply


      t.timestamps null: false
    end
  end
end
