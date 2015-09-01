class AddNickNameToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :nickname, :string
  end
end
