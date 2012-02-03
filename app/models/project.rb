class Project < ActiveRecord::Base
  attr_accessible :name, :user_id
  
  belongs_to :user
  
  has_many :images
  has_many :comments
  
  validates :name, :presence => { :message => "Name cannot be blank." },
            :allow_blank => true,
            :length => { :minimum => 2, :maximum => 32 },
            :format => { :with => /^[a-zA-Z0-9_\-\+\' ]*$/,
                 :message => 'Only alphanumeric characters please.' }
end
