class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :id, :facebook_id, :username, :name, :email, 
                  :password, :password_confirmation, :remember_me
                  
  # active record callbacks
  # after_create :create_profile
  
  has_many :images
  has_many :projects
  has_one :profile
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    if !signed_in_resource.nil?
      current_user = signed_in_resource
      current_user.update_attributes(:facebook_id => data["id"], :has_stub_password => true)
      return current_user
    elsif user = User.find_by_email(data["email"])
      user.update_attribute(:facebook_id, data["id"])
      return user
    elsif user = User.find_by_facebook_id(data["id"])
      return user
    else
      # Create a user with a stub password.
      User.create!(:facebook_id => data["id"], :name => data["name"], :email => data["email"], :password => Devise.friendly_token[0,20])
    end
  end
  
  protected
  
  # def create_profile
  #   # a user profile is created every time a user is created.
  #   Profile.create(:user_id => self.id)
  # end
  
end
