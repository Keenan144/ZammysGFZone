class Recipe < ActiveRecord::Base
  has_many :foods
  has_many :steps
  has_many :comments
  has_many :likes

  belongs_to :user
  belongs_to :blog_post
  belongs_to :food_category

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
