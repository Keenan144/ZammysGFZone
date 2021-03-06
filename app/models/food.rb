class Food < ActiveRecord::Base
  has_many :likes

  belongs_to :food_category
  belongs_to :recipe
  belongs_to :fast_food
  belongs_to :restaurant
  belongs_to :blog_post
end
