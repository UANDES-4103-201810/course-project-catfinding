class Project < ApplicationRecord
  belongs_to :user
  has_many :promises

  validates :currentamount, numericality: {greater_than_or_equal_to: 0}
  validates :goalamount, numericality: {greater_than_or_equal_to: 0}

  validate date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if start_date.present? && deadline < Date.today
      errors.add(:start_date, "Can't be in the past")
    end
  end
end
