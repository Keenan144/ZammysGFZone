class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe
  belongs_to :comment
  belongs_to :blog_post
  belongs_to :food
end
