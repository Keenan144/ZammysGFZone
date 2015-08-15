class UserPost < ActiveRecord::Base
  belongs_to :user 

  has_many :comments
  has_many :restaurants
  has_many :fast_foods
end
