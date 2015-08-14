class BlogPost < ActiveRecord::Base
  belongs_to :user

  has_many :comments, :restaurants, :fast_foods, :foods, :recipes
end
