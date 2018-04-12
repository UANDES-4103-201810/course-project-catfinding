class Userpassword < ApplicationRecord
  belongs_to :user
  validates :password, length: {minimum: 8}
end
