class User < ApplicationRecord
  has_many :projects
  has_many :userpasswords

  validates :username, length: {minimum: 4}
  validates :mail, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
end
