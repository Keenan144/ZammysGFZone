class Comment < ActiveRecord::Base
  belongs_to :blog_post
  belongs_to :user_post
  belongs_to :user 
  has_many :replys
  
end
