class Project < ApplicationRecord
  has_many :project_categories
  has_many :categories, through: :project_categories
  has_many :promises

  belongs_to :user
  has_many :user_fund_projects
  has_many :users, through: :user_fund_projects
  has_many :wishlist_projects
  has_many :wishlists, through: :wishlist_projects

  has_attached_file :avatar, styles: { medium: "252x313>", thumb: "100x100>" }, default_url: "/assets/gato_project.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  validates :currentamount, numericality: { greater_than_or_equal_to: 0 }
  validates :goalamount, numericality: { greater_than: 0 }
  validates :title, length: { minimum: 3 }

  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end
end
