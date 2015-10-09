class Comment < ActiveRecord::Base
  belongs_to :blog_post
  belongs_to :user_post
  belongs_to :user 
  belongs_to :recipe
  has_many :replys
  has_many :likes

  sync :all

  sync_scope :active, -> { where(completed: false) }
  sync_scope :completed, -> { where(completed: true) }

  validates :comment, presence: true
  validates :user_id, presence: true
  
end
