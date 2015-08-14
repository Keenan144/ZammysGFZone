class Restaurant < ActiveRecord::Base
  has_many :foods

  belongs_to :blog_post, :user_post
end
