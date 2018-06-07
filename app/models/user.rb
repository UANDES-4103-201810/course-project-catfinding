class User < ApplicationRecord

  has_many :projects
  has_one :wishlist
  has_many :projects, through: :wishlist
  has_many :projects
  has_one :user_role

  has_attached_file :avatar, styles: { medium: "252x313>", thumb: "100x100>" }, default_url: "/assets/gato_user.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider=auth.provider
      user.uid=auth.uid
      user.email=auth.info.email
      user.name=auth.info.name
      user.password=Devise.friendly_token[0,20]
    end
  end

end
