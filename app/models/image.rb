class Image < ActiveRecord::Base
  attr_accessible :image
  
  belongs_to :user
  belongs_to :project
  has_many :comments
  
  validate :image, :presence => true
  
  mount_uploader :image, ImageUploader
    
end
