class Recipe < ActiveRecord::Base
  has_many :foods

  belongs_to :user, :blog_post, :food_category
end
