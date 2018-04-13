class User < ApplicationRecord
  has_many :userpasswords
  validates :name, length: {minimum: 2}
  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validate :validate_age
  validates :address, length: {minimum: 5}

  def validate_age
    if birthday > 14.years.ago.to_date
      errors.add(:birthday, 'You should be over 14 years old.')
    end
  end
  after_create do
    puts "You have created an user"
  end
  before_save :validate_age
end
