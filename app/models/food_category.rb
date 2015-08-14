class FoodCategory < ActiveRecord::Base
  has_many :foods, :recipes
end
