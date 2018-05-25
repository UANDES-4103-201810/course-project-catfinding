class User < ApplicationRecord
  has_many :user_fund_projects
  has_many :projects, through: :user_fund_projects
  has_one :wishlist
  has_many :projects, through: :wishlist
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_one :user_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
