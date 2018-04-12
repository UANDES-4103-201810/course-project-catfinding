class User < ApplicationRecord
  has_many :projects
  has_many :userpasswords

  validates :username, length: {minimum: 4}
  validates :mail, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validate :validate_age
  validates :address, length: {minimum: 3}

  def validate_age
    if birthday.present? && birthday > 14
      errors.add(:birthday, 'You should be over 18 years old.')
    end
  end
end
