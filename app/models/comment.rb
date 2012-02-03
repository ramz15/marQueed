class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :image_id
  
  belongs_to :user
  belongs_to :image
  belongs_to :project
  
  validates :body, :presence => true
  
end
