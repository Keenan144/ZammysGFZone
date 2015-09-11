class Comment < ActiveRecord::Base
  belongs_to :blog_post
  belongs_to :user_post
  belongs_to :user 
  belongs_to :recipe
  has_many :replys

  validates :comment, presence: true
  validates :user_id, presence: true
  
end
