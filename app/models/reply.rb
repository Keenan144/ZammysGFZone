class Reply < ActiveRecord::Base
  belongs_to :comment, :user
end
