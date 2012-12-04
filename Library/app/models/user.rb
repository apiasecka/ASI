class User < ActiveRecord::Base
  attr_accessor :email
  has_many :authorizations
  attr_accessible :name, :email
  validates :name, :email, :presence => true
  
  
  #def self.create_from_hash!(hash)
  #  create(:name => hash['user_info']['name'])
  #end
  
  def add_provider(auth_hash)
    # Check if the provider already exists, so we don't add it twice
    unless authorizations.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
      Authorization.create :user => self, :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    end
  end
  
  

def apply_omniauth(omniauth)
  self.email = auth_hash['user']['email'] if email.blank?
  authentications.build(:provider => auth_hash['provider'], :uid => auth_hash['uid'])
end

def password_required?
  (authentications.empty? || !password.blank?) && super
end


  
end
