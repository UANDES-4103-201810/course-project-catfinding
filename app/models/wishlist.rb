class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :wishlist_projects
  has_many :projects, through: :wishlist_projects
end
