class Userpassword < ApplicationRecord
  belongs_to :user
  validates :password, length: {minimum: 8}
  after_update do
    puts "You have changed your password."
  end
end
