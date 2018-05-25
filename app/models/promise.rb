class Promise < ApplicationRecord
  belongs_to :project
  validates :name, length: {minimum: 3}

  validates :description, length: {minimum: 20}
  validates :amount, numericality: {greater_than: 0}
end
