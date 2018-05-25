class Project < ApplicationRecord
  belongs_to :category
  has_many :promises
  has_one :user_project
  has_one :user, through: :user_project
  has_many :user_fund_projects
  has_many :users, through: :user_fund_projects
  has_many :wishlist_projects
  has_many :wishlists, through: :wishlist_projects


  validates :currentamount, numericality: { greater_than_or_equal_to: 0 }
  validates :goalamount, numericality: { greater_than: 0 }
  validates :tittle, length: { minimum: 3 }
  validates :markdown, length: { minimum: 3 }
end
