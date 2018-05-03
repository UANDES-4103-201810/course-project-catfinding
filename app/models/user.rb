class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, length: {minimum: 3}
  validates :last_name, length: {minimum: 3}
  validates :phone, length: {minimum: 9}

  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if birthday < (Date.today-14.years)
      errors.add(:birthday, "You must be (at least) 14 years old")
    end
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

end
