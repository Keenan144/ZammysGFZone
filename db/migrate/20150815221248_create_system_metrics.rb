class CreateSystemMetrics < ActiveRecord::Migration
  def change
    create_table :system_metrics do |t|
      t.integer :site_visits, :default => 1
      t.integer :site_errors, :default => 0
      t.integer :about_views, :default => 1
      t.integer :logins, :default => 1

      t.integer :breakfast_views, :default => 1
      t.integer :lunch_views, :default => 1
      t.integer :dinner_views, :default => 1
    end
  end
end
