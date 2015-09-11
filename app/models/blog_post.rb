class BlogPost < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :restaurants
  has_many :fast_foods
  has_many :foods
  has_many :recipes
  has_many :likes

  validates :title, presence: true, uniqueness: true
  validates :blog_content, presence: true
end
