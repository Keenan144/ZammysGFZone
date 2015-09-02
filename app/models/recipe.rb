class Recipe < ActiveRecord::Base
  has_many :foods
  has_many :steps

  belongs_to :user
  belongs_to :blog_post
  belongs_to :food_category
end
