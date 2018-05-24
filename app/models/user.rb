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


  #validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if (self.birthday) < (Date.today-14.years)
      errors.add(:birthday, "You must be (at least) 14 years old")
    end
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
