class Comment < ActiveRecord::Base
  belongs_to :blog_post, :user_post, :user 
  has_many :replys
  
end
