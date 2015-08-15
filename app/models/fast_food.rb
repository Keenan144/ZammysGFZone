class FastFood < ActiveRecord::Base
  has_many :foods

  belongs_to :blog_post
  belongs_to :user_post
end
