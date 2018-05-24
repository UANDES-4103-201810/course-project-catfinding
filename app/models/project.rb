class Project < ApplicationRecord
  belongs_to :category
  has_many :promises
  has_one :user_project
  has_one :user, through: :user_project
  has_many :user_fund_projects
  has_many :users, through: :user_fund_projects
  has_many :wishlisttoprojects
  has_many :wishlists, through: :wishlisttoprojects


  validates :currentamount, numericality: {greater_than_or_equal_to: 0}
  validates :goalamount, numericality: {greater_than: 0}
  validates :tittle, length: {minimum: 3}
  validates :markdown, length: {minimum: 3}
  attr_accessor :user_id

  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if deadline.present? && deadline < Date.today
      errors.add(:start_date, "Can't be in the past")
    end
  end

  after_create do
    puts "You have created a project"
  end
end
