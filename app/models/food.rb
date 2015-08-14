class Food < ActiveRecord::Base
  belongs_to :food_category, :recipe, :fast_food, :restaurant, :blog_post
end
