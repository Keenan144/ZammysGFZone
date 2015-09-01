class AddMonthToArchives < ActiveRecord::Migration
  def change
    add_column :archives, :month, :string
  end
end
