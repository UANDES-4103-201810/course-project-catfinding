class Promise < ApplicationRecord
  belongs_to :project

  validates :promise0
  validates :description, length: {minimum: 20}


  def promise0
    if amount < 0 or amount = 0
      errors.add(:amount, "Promise amount is invalid")
    end
  end

  after_create do
    puts "You have created a promise!"
  end
end
