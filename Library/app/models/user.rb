class User < ActiveRecord::Base
  
  def self.from_omniauth(user_data)
    where(user_data.slice("provider", "uid")).first || create_from_omniauth(user_data)  
  end

  def self.create_from_omniauth(user_data)
    create! do |user|
      user.uid = user_data["uid"]
      user.provider = user_data["provider"]
      user.name = user_data["info"]["name"]
      user.email = user_data["info"]["email"]
    end
  end
end
