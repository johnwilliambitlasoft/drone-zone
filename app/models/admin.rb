class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    admin = Admin.where(email: access_token.info.email ).first   
  unless admin
      admin = Admin.create(
      email: access_token.info.email,
      password: Devise.friendly_token[0,20]
      )
  end
  admin.name= access_token.info.name
  admin.image= access_token.info.image
  admin.uid= access_token.info.uid
  admin.provider= access_token.info.provider
  admin.save
  admin
end

end