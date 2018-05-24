class Wishlist < ApplicationRecord
  has_many :wishlisttoprojects
  has_many :projects, through: :wishlisttoprojects
  belongs_to :user
end
