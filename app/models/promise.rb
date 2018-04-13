class Promise < ApplicationRecord
  belongs_to :project
  validates :name, length: {minimum: 3}

  validates :description, length: {minimum: 20}
  validates :amount, numericality: {greater_than: 0}

  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if etd.present? && etd < Date.today
      errors.add(:etd, "Can't be in the past")
    end
  end

  after_create do
    puts "You have created a promise!"
  end
end
