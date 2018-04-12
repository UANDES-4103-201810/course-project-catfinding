class Promise < ApplicationRecord
  belongs_to :project

  validates :promise0
  validates :description, length: {minimum: 20}


  def promise0
    if amount < 0 or amount = 0
      errors.add(:amount, "Promises can't cost 0 or less")
    end
  end
end
